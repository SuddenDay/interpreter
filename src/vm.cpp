#include "vm.hpp"
#include <iostream>
#include <functional>
#include "util.hpp"
#include "objstring.hpp"
#include "object.hpp"
#include "value.hpp"
#include "native.hpp"
#include <string_view>

VM::VM() : cu_(*this), globals_(), gc_(*this), scheduler_(*this)
{
    AllocBase::init(&gc_);
    init_string_ = create_obj_string(std::string_view("init"), *this);
    define_native("clock", Native::clock);
    define_native("insert", Native::insert);
    define_native("erase", Native::erase);
    define_native("push", Native::push);
    define_native("pop", Native::pop);
}

bool VM::call_value(const Value &callee, uint8_t argCount)
{
    if (callee.is_obj())
    {
        switch (callee.as<Obj *>()->type_)
        {
        case ObjType::BoundMethod:
        {
            auto bound = callee.as_obj<ObjBoundMethod>();
            current_coroutine_->stack_[current_coroutine_->top_ - argCount - 1] = bound->receiver_;
            return call(bound->method_, argCount);
        }
        case ObjType::Class:
        {
            auto klass = callee.as_obj<ObjClass>();
            current_coroutine_->stack_.at(current_coroutine_->top_ - 1 - argCount) = create_obj<ObjInstance>(gc_, klass);
            Value initializer;
            if (klass->methods_.find(init_string_) != klass->methods_.end())
            {
                initializer = klass->methods_.at(init_string_);
                return call(initializer.as_obj<ObjClosure>(), argCount);
            }
            else if (argCount != 0)
            {
                runtime_error("Expected 0 arguments but got %d.",
                              argCount);
                return false;
            }
            return true;
        }
        case ObjType::Closure:
            return call(callee.as_obj<ObjClosure>(), argCount); // add new frame
        case ObjType::Native:
        {
            auto native = callee.as_obj<ObjNative>()->function_;
            auto result = native(argCount, current_coroutine_->stack_.data() + current_coroutine_->top_ - argCount);
            current_coroutine_->top_ -= argCount + 1;
            push(result);
            return true;
        }

        default:
            break;
        }
    }
    runtime_error("Can only call functions and classes.");
    return false;
}

bool VM::call(ObjClosure *closure, int argCount)
{
    if (argCount != closure->function_->arity_)
    {
        runtime_error("Expected ", closure->function_->arity_, " arguments but got", argCount);
        return false;
    }
    if (current_coroutine_->frame_count_ >= FRAMES_MAX)
    {
        runtime_error("Stack overflow.");
        return false;
    }
    CallFrame &frame = current_coroutine_->frames_[current_coroutine_->frame_count_++];
    frame.closure_ = closure;
    frame.ip_ = 0;
    frame.slot_ = current_coroutine_->top_ - argCount - 1;
    return true;
}

bool VM::invoke(ObjString *name, int argCount)
{
    Value receiver = peek(argCount);
    if (!receiver.is_obj_type<ObjInstance>())
    {
        runtime_error("Only instances have methods.");
        return false;
    }
    ObjInstance *instance = receiver.as_obj<ObjInstance>();

    if (instance->fields_.find(name) != instance->fields_.end())
    {
        Value value = instance->fields_.at(name);
        current_coroutine_->stack_[current_coroutine_->top_ - argCount - 1] = value;
        return call_value(value, argCount);
    }

    return invoke_from_class(instance->objClass_, name, argCount);
}

bool VM::invoke_from_class(ObjClass *klass, ObjString *name,
                           int argCount)
{
    if (klass->methods_.find(name) == klass->methods_.end())
    {
        runtime_error("Undefined property ", name, ".");
        return false;
    }
    auto method = klass->methods_.at(name);
    return call(method.as_obj<ObjClosure>(), argCount);
}

ObjUpvalue *VM::capture_upvalue(Value *local)
{
    ObjUpvalue *prevUpvalue = NULL;
    ObjUpvalue *upvalue = open_upvalues_;
    while (upvalue != nullptr && upvalue->location_ > local)
    {
        prevUpvalue = upvalue;
        upvalue = upvalue->next_;
    }

    if (upvalue != NULL && upvalue->location_ == local)
        return upvalue;

    ObjUpvalue *createdUpvalue = create_obj<ObjUpvalue>(gc_, local);
    createdUpvalue->next_ = upvalue;

    if (prevUpvalue == NULL)
        open_upvalues_ = createdUpvalue;
    else
        prevUpvalue->next_ = createdUpvalue;

    return createdUpvalue;
}

void VM::define_native(std::string_view name, NativeFn function)
{
    if (current_coroutine_ != nullptr)
    {
        push(create_obj_string(name, *this));
        push(create_obj<ObjNative>(gc_, function, name));
        globals_.insert_or_assign(current_coroutine_->stack_.at(0).as_obj<ObjString>(), current_coroutine_->stack_.at(1));
        pop();
        pop();
    }
}

InterpretResult VM::interpret(const std::string &source)
{
    ObjFunction *function = cu_.compile(source);
    if (function == nullptr)
        return InterpretResult::INTERPRET_COMPILE_ERROR;

    ObjClosure *closure = create_obj<ObjClosure>(gc_, function);
    ObjCoroutine *co = create_obj<ObjCoroutine>(gc_, closure); // modify
    // in memory.cpp current_coroutine is nullptr to gc

    scheduler_.addObjCoroutine(co);
    co->is_main_ = true;
    co->stack_[0] = co->closure_;
    co->top_ = 1;
    co->frame_count_ = 1;
    co->frames_[0].closure_ = closure;
    co->frames_[0].ip_ = 0;
    co->frames_[0].slot_ = 0;
    return scheduler_.resumeCoroutine(co);
}

bool is_falsey(const Value &value)
{
    return value.is_nil() ||
           (value.is_bool() && !value.as<bool>());
}

InterpretResult VM::run(ObjCoroutine *co)
{
    current_coroutine_ = co; // vm just hold a ptr to target co

    CallFrame *frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];

    while (co->status_ != CoroutineStatus::FINISHED)
    {
#ifdef DEBUG_MODE
        printf("           stackframe: ");
        for (int i = 0; i < current_coroutine_->top_; i++)
            std::cout << "[ " << current_coroutine_->stack_.at(i) << " ]";
        std::cout << "\n";
        Util::disassemble_instruction(frame->closure_->function_->chunk_, frame->ip_);
#endif
        uint8_t instruction = frame->read_byte();
        switch (instruction)
        {
        case OP_RETURN:
        {
            Value result = pop();
            close_upvalues(current_coroutine_->stack_.data() + frame->slot_);
            current_coroutine_->frame_count_--; // leave current frame
            if (current_coroutine_->frame_count_ == 0)
            {
                co->status_ = CoroutineStatus::FINISHED;
                if (co->is_main_ == true)
                    return INTERPRET_OK;
                else
                    return scheduler_.runNextObjCoroutine();
            }
            current_coroutine_->top_ = frame->slot_;
            push(result);
            frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
            break;
        }
        case OP_NEGATE:
        {
            if (!peek(0).is_number())
            {
                runtime_error("Operand must be number.");
                return INTERPRET_RUNTIME_ERROR;
            }
            auto a = pop();
            push(Value(-a.as<int>()));
            break;
        }
        case OP_CONSTANT:
        {
            push(frame->read_constant());
            break;
        }
        case OP_ADD:
        { // clox string can always stay in memory cause of function.chunk.constants
          // but like a + b can gc in next memory allocate if reach threshold
            if (peek(0).is_obj_type<ObjString>() && peek(1).is_obj_type<ObjString>())
            {
                auto b = peek(0).as_obj<ObjString>();
                auto a = peek(1).as_obj<ObjString>();
                auto res = create_obj_string(std::string_view(a->content_ + b->content_), *this);
                pop();
                pop();
                push(res);
            }
            else if (peek(0).is_number() && peek(1).is_number())
            {
                auto b = pop().as<int>();
                auto a = pop().as<int>();
                push(a + b);
            }
            else
            {
                runtime_error("Operands must be two numbers or two strings.");
                return INTERPRET_RUNTIME_ERROR;
            }
            break;
        }
        case OP_SUB:
        {
            if (!binary_op(std::minus<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case OP_MUL:
        {
            if (!binary_op(std::multiplies<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case OP_DIV:
        {
            if (!binary_op(std::divides<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case OP_TRUE:
        {
            push(Value(true));
            break;
        }
        case OP_FALSE:
        {
            push(Value(false));
            break;
        }
        case OP_NIL:
        {
            push(Value());
            break;
        }
        case OP_NOT:
        {
            push(is_falsey(pop()));
            break;
        }
        case OP_EQUAL:
        {
            if (!binary_op(std::equal_to<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case OP_GREATER:
        {
            if (!binary_op(std::greater<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case OP_LESS:
        {
            if (!binary_op(std::less<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case OP_PRINT:
        {
            std::cout << pop() << std::endl;
            break;
        }
        case OP_DEFINE_GLOBAL:
        {
            auto name = frame->read_string();
            globals_.insert_or_assign(name, peek(0));
            pop();
            break;
        }
        case OP_GET_GLOBAL:
        {
            auto name = frame->read_string();
            try
            {
                auto &value = globals_.at(name);
                push(value);
            }
            catch (const std::out_of_range &)
            {
                runtime_error("Undefined variable ", name->text());
                return INTERPRET_RUNTIME_ERROR;
            }
            break;
        }
        case OP_SET_GLOBAL:
        {
            auto name = frame->read_string();
            globals_.insert_or_assign(name, peek(0)); // modify ?
            break;
        }
        case OP_POP:
        {
            pop();
            break;
        }
        case OP_GET_LOCAL:
        {
            int slot = frame->read_byte();
            push(current_coroutine_->stack_[frame->slot_ + slot]);
            break;
        }
        case OP_SET_LOCAL:
        {
            int slot = frame->read_byte();
            current_coroutine_->stack_[frame->slot_ + slot] = peek(0);
            break;
        }
        case OP_JUMP_IF_FALSE:
        {
            int offset = frame->read_short();
            if (is_falsey(peek(0)))
                frame->ip_ += offset;
            break;
        }
        case OP_JUMP:
        {
            int offset = frame->read_short();
            frame->ip_ += offset;
            break;
        }
        case OP_LOOP:
        {
            int offset = frame->read_short();
            frame->ip_ -= offset;
            break;
        }
        case OP_CONTINUE:
        case OP_BREAK:
        {
            // int offset = Util::get_next_loop(frame->closure->function->chunk, frame->ip);
            // frame->ip += offset;
            int is_break = (instruction == OP_BREAK);
            int offset = frame->read_short();
            frame->ip_ = offset + is_break;
            break;
        }
        case OP_CALL:
        {
            int argCount = frame->read_byte();
            if (!call_value(peek(argCount), argCount))
                return INTERPRET_RUNTIME_ERROR;
            frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1]; // frame update, enter into function scope
            break;
        }
        case OP_FUNCTION:
        {
            auto function = frame->read_constant().as_obj<ObjFunction>();
            push(function);
            break;
        }
        case OP_CLOSURE:
        {
            auto function = frame->read_constant().as_obj<ObjFunction>();
            auto closure = create_obj<ObjClosure>(gc_, function);
            push(closure);
            for (int i = 0; i < closure->upvalue_count(); i++)
            {
                auto is_local = frame->read_byte();
                auto index = frame->read_byte();
                if (is_local)
                    closure->upvalues_.at(i) = capture_upvalue(current_coroutine_->stack_.data() + frame->slot_ + index);
                else
                    closure->upvalues_.at(i) = frame->closure_->upvalues_.at(index);
            }
            break;
        }
        case OP_CLOSE_UPVALUE:
        {
            close_upvalues(current_coroutine_->stack_.data() + current_coroutine_->top_ - 1);
            pop();
            break;
        }
        case OP_GET_UPVALUE:
        {
            uint8_t slot = frame->read_byte();
            push(*frame->closure_->upvalues_[slot]->location_);
            break;
        }
        case OP_SET_UPVALUE:
        {
            uint8_t slot = frame->read_byte();
            *frame->closure_->upvalues_[slot]->location_ = peek(0);
            break;
        }
        case OP_CLASS:
        {
            push(create_obj<ObjClass>(gc_, frame->read_string()));
            break;
        }
        case OP_GET_PROPERTY:
        {
            if (!peek(0).is_obj_type<ObjInstance>())
            {
                runtime_error("Only instances have properties.");
                return INTERPRET_RUNTIME_ERROR;
            }

            auto instance = peek(0).as_obj<ObjInstance>();
            auto name = frame->read_string();
            try
            {
                auto &value = instance->fields_.at(name);
                pop();
                push(value);
            }
            catch (const std::out_of_range &)
            {
                if (!bind_method(instance->objClass_, name))
                    return INTERPRET_RUNTIME_ERROR;
            }
            break;
        }
        case OP_SET_PROPERTY:
        {
            auto instance = peek(1).as_obj<ObjInstance>();
            instance->fields_.insert_or_assign(frame->read_string(), peek(0));
            Value value = pop();
            pop();
            push(value);
            break;
        }
        case OP_METHOD:
        {
            define_method(frame->read_string());
            break;
        }
        case OP_INVOKE:
        {
            ObjString *method = frame->read_string();
            int argCount = frame->read_byte();
            if (!invoke(method, argCount))
            {
                return INTERPRET_RUNTIME_ERROR;
            }
            frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
            break;
        }
        case OP_INHERIT:
        {
            if (!peek(1).is_obj_type<ObjClass>())
            {
                runtime_error("Superclass must be a class.");
                return INTERPRET_RUNTIME_ERROR;
            }
            ObjClass *superclass = peek(1).as_obj<ObjClass>();
            ObjClass *subclass = peek(0).as_obj<ObjClass>();
            for (const auto &[k, v] : superclass->methods_)
            {
                subclass->methods_.insert_or_assign(k, v);
            }
            pop();
            break;
        }
        case OP_GET_SUPER:
        {
            ObjString *name = frame->read_string();
            ObjClass *superclass = pop().as_obj<ObjClass>();

            if (!bind_method(superclass, name))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case OP_SUPER_INVOKE:
        {
            ObjString *method = frame->read_string();
            int argCount = frame->read_byte();
            ObjClass *superclass = pop().as_obj<ObjClass>();
            if (!invoke_from_class(superclass, method, argCount))
            {
                return INTERPRET_RUNTIME_ERROR;
            }
            frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
            break;
        }
        case OP_ARRAY:
        {
            int count = frame->read_byte();
            auto objArray = create_obj<ObjArray>(this->gc_, count);
            for (int i = 0; i < count; i++)
                objArray->values_.at(count - 1 - i) = pop();
            push(objArray);
            break;
        }
        case OP_GET_ELEMENT:
        {
            if (peek(1).as<Obj *>()->is_type(objtype_of<ObjArray>()))
            {
                auto index = pop().as<int>();
                auto value = pop().as_obj<ObjArray>()->values_.at(index);
                push(value);
            }
            else
            { // json
                auto key = pop();
                auto value = pop().as_obj<ObjJson>()->kv_[key];
                push(value);
            }
            break;
        }
        case OP_PEEK:
        {
            push(peek(frame->read_byte()));
            break;
        }
        case OP_SET_ELEMENT:
        {
            if (peek(2).as<Obj *>()->is_type(objtype_of<ObjArray>()))
            {
                auto value = pop();
                auto index = pop().as<int>();
                auto array = pop().as_obj<ObjArray>();
                int n = array->values_.size();
                if (index >= n)
                    runtime_error("Index is larger than array size.");
                array->values_.at(index) = value;
                push(value);
            }
            else
            {
                auto value = pop();
                auto key = pop();
                pop().as_obj<ObjJson>()->kv_.insert_or_assign(key, value);
                push(value);
            }
            break;
        }
        case OP_JSON:
        {
            int count = frame->read_byte();
            auto objJson = create_obj<ObjJson>(this->gc_);
            for (int i = 0; i < count; i++)
            {
                auto value = pop();
                auto key = pop();
                objJson->kv_[key] = value;
            }
            push(objJson);
            break;
        }
        case OP_CREATE_COROUTINE:
        {
            try
            {
                std::vector<Value> arguments;
                auto count = frame->read_byte();
                for (int i = 0; i < count; i++)
                    arguments.push_back(pop());
                auto closure = pop().as_obj<ObjClosure>();
                auto coroutine = create_obj<ObjCoroutine>(gc_, closure, arguments);
                push(coroutine);
                scheduler_.addObjCoroutine(coroutine);
            }
            catch (const std::exception &e)
            {
                throw std::runtime_error("Only closure can be created as a coroutine.");
            }
            break;
        }
        case OP_YIELD_COROUTINE:
        {
            scheduler_.yieldCurrentObjCoroutine();
            return scheduler_.runNextObjCoroutine();
        }
        case OP_RESUME_COROUTINE:
        {
            scheduler_.yieldCurrentObjCoroutine();
            try
            {
                auto targetCo = pop().as_obj<ObjCoroutine>();
                scheduler_.resumeCoroutine(targetCo);
            }
            catch (const std::exception &e)
            {
                throw std::runtime_error("Only closure can be created as a coroutine.");
            }
            break;
        }
        default:
            std::cout << Opcode(instruction) << " error" << std::endl;
            break;
        }
    }
    return INTERPRET_OK;
}

uint8_t CallFrame::read_byte()
{
    return closure_->function_->chunk_.bytecode_[ip_++];
}
Value CallFrame::read_constant() { return closure_->function_->chunk_.constants_.at(read_byte()); }
uint16_t CallFrame::read_short()
{
    ip_ += 2;
    auto a = closure_->function_->chunk_.bytecode_[ip_ - 2] << 8;
    auto b = closure_->function_->chunk_.bytecode_[ip_ - 1];
    return static_cast<uint16_t>(a | b);
};

ObjString *CallFrame::read_string()
{
    return read_constant().as_obj<ObjString>();
}

void VM::reset_stack()
{
    current_coroutine_->top_ = current_coroutine_->frame_count_ = 0;
    open_upvalues_ = nullptr;
}

void VM::push(Value value)
{
    current_coroutine_->stack_.at(current_coroutine_->top_++) = value;
}

Value VM::pop()
{
    return current_coroutine_->stack_.at(--current_coroutine_->top_);
}

Value VM::peek(int distance)
{
    return current_coroutine_->stack_[current_coroutine_->top_ - 1 - distance];
}

void VM::close_upvalues(Value *last)
{
    while (open_upvalues_ != NULL &&
           open_upvalues_->location_ >= last)
    {
        ObjUpvalue *upvalue = open_upvalues_;
        upvalue->closed_ = *upvalue->location_;
        upvalue->location_ = &upvalue->closed_;
        open_upvalues_ = upvalue->next_;
    }
}

void VM::define_method(ObjString *name)
{
    const Value &method = peek(0);
    ObjClass *klass = peek(1).as_obj<ObjClass>();
    klass->methods_.insert_or_assign(name, method);
    pop();
}

bool VM::bind_method(ObjClass *klass, ObjString *name)
{
    try
    {
        auto method = klass->methods_.at(name);
        auto bound = create_obj<ObjBoundMethod>(gc_, peek(0), method.as_obj<ObjClosure>());
        pop();
        push(bound);
        return true;
    }
    catch (const std::out_of_range &)
    {
        runtime_error("Undefined property ", *name, " .");
        return false;
    }
    return false;
}

template <typename Operator>
bool VM::binary_op(Operator op)
{
    Value a = pop();
    Value b = pop();
    if (!(
            (a.is_number() && b.is_number()) ||
            (a.is_bool() && b.is_bool()) ||
            (a.is_obj() && b.is_obj()) ||
            (a.is_nil() && b.is_nil()) ||
            (a.is_nil() && b.is_obj()) ||
            (a.is_obj() && b.is_nil())))
    {
        runtime_error("Operands do not fit");
        return false;
    }
    push(op(b, a));
    return true;
}

template <typename... Args>
void VM::runtime_error(Args &&...args)
{
    static_assert(sizeof...(Args) > 0);
    (std::cerr << ... << std::forward<Args>(args));
    std::cerr << '\n';
    for (int i = current_coroutine_->frame_count_ - 1; i >= 0; i--)
    {
        const auto &frame = current_coroutine_->frames_.at(i);
        auto function = frame.closure_->function_;
        auto instruction = frame.ip_ - 1;
        auto line = function->chunk_.lines_.at(instruction);
        std::cerr << "[line " << line << "] in ";
        if (function->name_ == nullptr)
            std::cerr << "script\n";
        else
            std::cerr << function->name_->text() << "()\n";
    }
    reset_stack();
}
