#include "vm.hpp"
#include <iostream>
#include <functional>
#include "util.hpp"
#include "objstring.hpp"
#include "object.hpp"
#include "value.hpp"
#include "native.hpp"
#include "compiler.hpp"
#include <string_view>

#define BINARY_OP(op)                                                \
    do                                                               \
    {                                                                \
        if (!peek(0).is_number() || !peek(1).is_number())            \
        {                                                            \
            runtime_error("Operands must be numbers.");              \
            return INTERPRET_RUNTIME_ERROR;                          \
        }                                                            \
        int b = pop().as<int>();                                     \
        int a = pop().as<int>();                                     \
        push(a op b);                                                \
    } while (false);

VM::VM() : globals_(), gc_(*this), scheduler_(*this)
{
    get_default_gc() = &gc_;
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
            // Overwritten by something like <method <fn "eggs">>
            return call(bound->method_, argCount);
        }
        case ObjType::Class:
        {
            auto klass = callee.as_obj<ObjClass>();
            current_coroutine_->stack_.at(current_coroutine_->top_ - 1 - argCount) = create_obj<ObjInstance>(gc_, klass); // ObjInstance overwrites ObjClass
            // Overwrite <class a>
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
        runtime_error("Expected ", closure->function_->arity_, " arguments but got ", argCount);
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
    frame.slot_ = current_coroutine_->top_ - argCount - 1; // point to the callable obj position (save a pop, just overwrite)
                                                          // the return value is expected to be placed here
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

    int offset = instance->objClass_->get_field_offset(name);
    if (offset >= 0 && offset < static_cast<int>(instance->field_values_.size()))
    {
        Value value = instance->field_values_[offset];
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
    ObjUpvalue *prevUpvalue = nullptr;
    ObjUpvalue *upvalue = open_upvalues_;
    while (upvalue != nullptr && upvalue->location_ > local)
    {
        prevUpvalue = upvalue;
        upvalue = upvalue->next_;
    }

    if (upvalue != nullptr && upvalue->location_ == local)
        return upvalue;

    ObjUpvalue *createdUpvalue = create_obj<ObjUpvalue>(gc_, local);
    createdUpvalue->next_ = upvalue;

    if (prevUpvalue == nullptr)
        open_upvalues_ = createdUpvalue;
    else
        prevUpvalue->next_ = createdUpvalue;

    return createdUpvalue;
}

void VM::define_native(std::string_view name, NativeFn function)
{
    auto key = create_obj_string(name, *this);
    auto value = create_obj<ObjNative>(gc_, function, name);
    globals_.insert_or_assign(key, Value(value));
}

InterpretResult VM::interpret(const std::string &source)
{
    Compilation cu(*this);
    ObjFunction *function = cu.compile(source);
    if (function == nullptr)
        return InterpretResult::INTERPRET_COMPILE_ERROR;

    ObjClosure *closure = create_obj<ObjClosure>(gc_, function);
    ObjCoroutine *co = create_obj<ObjCoroutine>(gc_, closure); // modify
    // in memory.cpp current_coroutine is nullptr to gc

    // scheduler_.addObjCoroutine(co);
    scheduler_.main_coroutine = co;
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
    current_coroutine_ = co;

    if (co->status_ == CoroutineStatus::FINISHED)
        return INTERPRET_OK;

    CallFrame *frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
    auto &top_ = current_coroutine_->top_;
    auto &stack = current_coroutine_->stack_;
    Value top = top_ > 0 ? stack[top_ - 1] : Value();

    void *dispatch_table[] = {
        [OP_RETURN] = &&L_OP_RETURN,
        [OP_CONSTANT] = &&L_OP_CONSTANT,
        [OP_NEGATE] = &&L_OP_NEGATE,
        [OP_ADD] = &&L_OP_ADD,
        [OP_SUB] = &&L_OP_SUB,
        [OP_MUL] = &&L_OP_MUL,
        [OP_DIV] = &&L_OP_DIV,
        [OP_NIL] = &&L_OP_NIL,
        [OP_TRUE] = &&L_OP_TRUE,
        [OP_FALSE] = &&L_OP_FALSE,
        [OP_NOT] = &&L_OP_NOT,
        [OP_EQUAL] = &&L_OP_EQUAL,
        [OP_GREATER] = &&L_OP_GREATER,
        [OP_LESS] = &&L_OP_LESS,
        [OP_PRINT] = &&L_OP_PRINT,
        [OP_POP] = &&L_OP_POP,
        [OP_DEFINE_GLOBAL] = &&L_OP_DEFINE_GLOBAL,
        [OP_GET_GLOBAL] = &&L_OP_GET_GLOBAL,
        [OP_SET_GLOBAL] = &&L_OP_SET_GLOBAL,
        [OP_SET_LOCAL] = &&L_OP_SET_LOCAL,
        [OP_GET_LOCAL] = &&L_OP_GET_LOCAL,
        [OP_JUMP_IF_FALSE] = &&L_OP_JUMP_IF_FALSE,
        [OP_JUMP] = &&L_OP_JUMP,
        [OP_LOOP] = &&L_OP_LOOP,
        [OP_CALL] = &&L_OP_CALL,
        [OP_CLOSURE] = &&L_OP_CLOSURE,
        [OP_GET_UPVALUE] = &&L_OP_GET_UPVALUE,
        [OP_SET_UPVALUE] = &&L_OP_SET_UPVALUE,
        [OP_CLOSE_UPVALUE] = &&L_OP_CLOSE_UPVALUE,
        [OP_CLASS] = &&L_OP_CLASS,
        [OP_SET_PROPERTY] = &&L_OP_SET_PROPERTY,
        [OP_GET_PROPERTY] = &&L_OP_GET_PROPERTY,
        [OP_METHOD] = &&L_OP_METHOD,
        [OP_INVOKE] = &&L_OP_INVOKE,
        [OP_INHERIT] = &&L_OP_INHERIT,
        [OP_GET_SUPER] = &&L_OP_GET_SUPER,
        [OP_SUPER_INVOKE] = &&L_OP_SUPER_INVOKE,
        [OP_ARRAY] = &&L_OP_ARRAY,
        [OP_JSON] = &&L_OP_JSON,
        [OP_GET_ELEMENT] = &&L_OP_GET_ELEMENT,
        [OP_SET_ELEMENT] = &&L_OP_SET_ELEMENT,
        [OP_FUNCTION] = &&L_OP_FUNCTION,
        [OP_CONTINUE] = &&L_OP_CONTINUE,
        [OP_BREAK] = &&L_OP_BREAK,
        [OP_CREATE_COROUTINE] = &&L_OP_CREATE_COROUTINE,
        [OP_YIELD_COROUTINE] = &&L_OP_YIELD_COROUTINE,
        [OP_RESUME_COROUTINE] = &&L_OP_RESUME_COROUTINE,
    };
    constexpr int OP_COUNT = sizeof(dispatch_table) / sizeof(dispatch_table[0]);

#define SPUSH(v) do { stack[top_++] = top; top = (v); stack[top_ - 1] = top; } while(0)

#ifdef DEBUG_MODE
#define NEXT()                                                                                     \
    do                                                                                             \
    {                                                                                              \
        printf("           stackframe: ");                                                         \
        for (int i = 0; i < current_coroutine_->top_; i++)                                         \
            std::cout << "[ " << current_coroutine_->stack_[i] << " ]";                           \
        std::cout << "\n";                                                                         \
        Util::disassemble_instruction(frame->closure_->function_->chunk_, frame->ip_);            \
        uint8_t _i = frame->read_byte();                                                           \
        if (_i >= OP_COUNT)                                                                        \
        {                                                                                          \
            std::cout << "Bad opcode " << (int)_i << " at ip " << (int)(frame->ip_ - 1) << "\n"; \
            return INTERPRET_RUNTIME_ERROR;                                                        \
        }                                                                                          \
        goto *dispatch_table[_i];                                                                  \
    } while (false)
#else
#define NEXT()                              \
    do                                      \
    {                                       \
        uint8_t _i = frame->read_byte();    \
        if (_i >= OP_COUNT)                 \
        {                                   \
            runtime_error("Bad opcode?");   \
            return INTERPRET_RUNTIME_ERROR; \
        }                                   \
        goto *dispatch_table[_i];           \
    } while (false)
#endif

    NEXT();

L_OP_RETURN:
    {
        Value result = top;
        --top_;
        close_upvalues(stack.data() + frame->slot_);
        current_coroutine_->frame_count_--;
        if (current_coroutine_->frame_count_ == 0)
        {
            co->status_ = CoroutineStatus::FINISHED;
            if (co->is_main_ == true)
                return INTERPRET_OK;
            else
                return scheduler_.runNextObjCoroutine(co);
        }
        top_ = frame->slot_;
        stack[top_++] = top;
        top = result;
        frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
    }
    NEXT();

L_OP_CONSTANT:
    {
        SPUSH(frame->read_constant());
    }
    NEXT();

L_OP_TRUE:
    {
        SPUSH(Value(true));
    }
    NEXT();

L_OP_FALSE:
    {
        SPUSH(Value(false));
    }
    NEXT();

L_OP_NIL:
    {
        SPUSH(Value());
    }
    NEXT();

L_OP_EQUAL:
    {
        Value b = top;
        --top_;
        top = stack[--top_];
        Value a = top;
        top = (a == b);
        stack[top_++] = top;
    }
    NEXT();

L_OP_GREATER:
    {
        if (!top.is_number() || !stack[top_ - 2].is_number())
        {
            runtime_error("Operands must be numbers.");
            return INTERPRET_RUNTIME_ERROR;
        }
        int b = top.as<int>();
        --top_;
        top = stack[--top_];
        int a = top.as<int>();
        top = (a > b);
        stack[top_++] = top;
    }
    NEXT();

L_OP_LESS:
    {
        if (!top.is_number() || !stack[top_ - 2].is_number())
        {
            runtime_error("Operands must be numbers.");
            return INTERPRET_RUNTIME_ERROR;
        }
        int b = top.as<int>();
        --top_;
        top = stack[--top_];
        int a = top.as<int>();
        top = (a < b);
        stack[top_++] = top;
    }
    NEXT();

L_OP_ADD:
    {
        Value rightVal = top;
        Value leftVal = stack[top_ - 2];

        if (leftVal.is_number() && rightVal.is_number())
        {
            --top_;
            top = stack[--top_];
            int a = top.as<int>();
            top = (a + rightVal.as<int>());
            stack[top_++] = top;
        }
        else
        {
            --top_;
            try
            {
                auto leftStr = Value::value_to_string(stack[--top_]);
                auto rightStr = Value::value_to_string(rightVal);
                ObjString *res = create_obj_string(leftStr + rightStr, *this);
                top = Value(res);
                stack[top_++] = top;
            }
            catch (...)
            {
                runtime_error("Operands must be two numbers or (string + anything).");
                return INTERPRET_RUNTIME_ERROR;
            }
        }
    }
    NEXT();

L_OP_SUB:
    {
        if (!top.is_number() || !stack[top_ - 2].is_number())
        {
            runtime_error("Operands must be numbers.");
            return INTERPRET_RUNTIME_ERROR;
        }
        int b = top.as<int>();
        --top_;
        top = stack[--top_];
        int a = top.as<int>();
        top = (a - b);
        stack[top_++] = top;
    }
    NEXT();

L_OP_MUL:
    {
        if (!top.is_number() || !stack[top_ - 2].is_number())
        {
            runtime_error("Operands must be numbers.");
            return INTERPRET_RUNTIME_ERROR;
        }
        int b = top.as<int>();
        --top_;
        top = stack[--top_];
        int a = top.as<int>();
        top = (a * b);
        stack[top_++] = top;
    }
    NEXT();

L_OP_DIV:
    {
        if (!top.is_number() || !stack[top_ - 2].is_number())
        {
            runtime_error("Operands must be numbers.");
            return INTERPRET_RUNTIME_ERROR;
        }
        int b = top.as<int>();
        if (b == 0)
        {
            runtime_error("Division by zero.");
            return INTERPRET_RUNTIME_ERROR;
        }
        --top_;
        top = stack[--top_];
        int a = top.as<int>();
        top = (a / b);
        stack[top_++] = top;
    }
    NEXT();

L_OP_NOT:
    {
        top = is_falsey(top);
        stack[top_ - 1] = top;
    }
    NEXT();

L_OP_NEGATE:
    {
        if (!top.is_number())
        {
            runtime_error("Operand must be a number.");
            return INTERPRET_RUNTIME_ERROR;
        }
        top = -top.as<int>();
        stack[top_ - 1] = top;
    }
    NEXT();

L_OP_PRINT:
    {
        std::cout << top << std::endl;
        --top_;
        top = top_ > 0 ? stack[top_ - 1] : Value();
    }
    NEXT();

L_OP_DEFINE_GLOBAL:
    {
        auto name = frame->read_string();
        globals_.insert_or_assign(name, top);
        --top_;
        top = top_ > 0 ? stack[top_ - 1] : Value();
    }
    NEXT();

L_OP_GET_GLOBAL:
    {
        auto name = frame->read_string();
        try
        {
            auto &value = globals_.at(name);
            SPUSH(value);
        }
        catch (const std::out_of_range &)
        {
            runtime_error("Undefined variable ", name->text());
            return INTERPRET_RUNTIME_ERROR;
        }
    }
    NEXT();

L_OP_SET_GLOBAL:
    {
        auto name = frame->read_string();
        globals_.insert_or_assign(name, top);
    }
    NEXT();

L_OP_POP:
    {
        --top_;
        top = top_ > 0 ? stack[top_ - 1] : Value();
    }
    NEXT();

L_OP_GET_LOCAL:
    {
        int slot = frame->read_byte();
        SPUSH(stack[frame->slot_ + slot]);
    }
    NEXT();

L_OP_SET_LOCAL:
    {
        int slot = frame->read_byte();
        stack[frame->slot_ + slot] = top;
    }
    NEXT();

L_OP_JUMP_IF_FALSE:
    {
        int offset = frame->read_short();
        if (is_falsey(top))
            frame->ip_ += offset;
    }
    NEXT();

L_OP_JUMP:
    {
        int offset = frame->read_short();
        frame->ip_ += offset;
    }
    NEXT();

L_OP_LOOP:
    {
        int offset = frame->read_short();
        frame->ip_ -= offset;
    }
    NEXT();

L_OP_CONTINUE:
    {
        int offset = frame->read_short();
        frame->ip_ = offset;
    }
    NEXT();

L_OP_BREAK:
    {
        int offset = frame->read_short();
        frame->ip_ = offset + 1;
    }
    NEXT();

L_OP_CALL:
    {
        int argCount = frame->read_byte();
        if (!call_value(stack[top_ - 1 - argCount], argCount))
            return INTERPRET_RUNTIME_ERROR;
        top = stack[top_ - 1];
        frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
    }
    NEXT();

L_OP_FUNCTION:
    {
        auto function = frame->read_constant().as_obj<ObjFunction>();
        SPUSH(function);
    }
    NEXT();

L_OP_CLOSURE:
    {
        auto function = frame->read_constant().as_obj<ObjFunction>();
        auto closure = create_obj<ObjClosure>(gc_, function);
        SPUSH(closure);
        for (int i = 0; i < closure->upvalue_count(); i++)
        {
            auto is_local = frame->read_byte();
            auto index = frame->read_byte();
            if (is_local)
                closure->upvalues_.at(i) = capture_upvalue(stack.data() + frame->slot_ + index);
            else
                closure->upvalues_.at(i) = frame->closure_->upvalues_.at(index);
        }
    }
    NEXT();

L_OP_CLOSE_UPVALUE:
    {
        close_upvalues(stack.data() + top_ - 1);
        --top_;
        top = top_ > 0 ? stack[top_ - 1] : Value();
    }
    NEXT();

L_OP_GET_UPVALUE:
    {
        uint8_t slot = frame->read_byte();
        SPUSH(*frame->closure_->upvalues_[slot]->location_);
    }
    NEXT();

L_OP_SET_UPVALUE:
    {
        uint8_t slot = frame->read_byte();
        *frame->closure_->upvalues_[slot]->location_ = top;
    }
    NEXT();

L_OP_CLASS:
    {
        SPUSH(create_obj<ObjClass>(gc_, frame->read_string()));
    }
    NEXT();

L_OP_GET_PROPERTY:
    {
        if (!top.is_obj_type<ObjInstance>())
        {
            runtime_error("Only instances have properties.");
            return INTERPRET_RUNTIME_ERROR;
        }

        auto instance = top.as_obj<ObjInstance>();
        auto name = frame->read_string();

        auto &ic = get_ic_[(frame->ip_ * 0x9e3779b9u) & (IC_SIZE - 1)];
        if (ic.klass_ == instance->objClass_ && ic.name_ == name)
        {
            top = instance->field_values_[ic.offset_];
            stack[top_ - 1] = top;
        }
        else
        {
            int offset = instance->objClass_->get_field_offset(name);
            if (offset >= 0 && offset < static_cast<int>(instance->field_values_.size()))
            {
                ic.klass_ = instance->objClass_;
                ic.name_ = name;
                ic.offset_ = offset;
                top = instance->field_values_[offset];
                stack[top_ - 1] = top;
            }
            else
            {
                if (!bind_method(instance->objClass_, name))
                    return INTERPRET_RUNTIME_ERROR;
                top = stack[top_ - 1];
            }
        }
    }
    NEXT();

L_OP_SET_PROPERTY:
    {
        auto instance = stack[top_ - 2].as_obj<ObjInstance>();
        auto value = top;
        auto name = frame->read_string();

        auto &ic = set_ic_[(frame->ip_ * 0x9e3779b9u) & (IC_SIZE - 1)];
        if (ic.klass_ == instance->objClass_ && ic.name_ == name)
        {
            if (ic.offset_ >= static_cast<int>(instance->field_values_.size()))
                instance->field_values_.resize(ic.offset_ + 1);
            instance->field_values_[ic.offset_] = value;
        }
        else
        {
            int offset = instance->objClass_->get_or_add_field_offset(name);
            if (offset >= static_cast<int>(instance->field_values_.size()))
                instance->field_values_.resize(offset + 1);
            ic.klass_ = instance->objClass_;
            ic.name_ = name;
            ic.offset_ = offset;
            instance->field_values_[offset] = value;
        }
        --top_;
        top = stack[--top_];
        top = value;
        stack[top_++] = top;
    }
    NEXT();

L_OP_METHOD:
    {
        define_method(frame->read_string());
        top = stack[top_ - 1];
    }
    NEXT();

L_OP_INVOKE:
    {
        ObjString *method = frame->read_string();
        int argCount = frame->read_byte();
        if (!invoke(method, argCount))
        {
            return INTERPRET_RUNTIME_ERROR;
        }
        top = stack[top_ - 1];
        frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
    }
    NEXT();

L_OP_INHERIT:
    {
        if (!stack[top_ - 2].is_obj_type<ObjClass>())
        {
            runtime_error("Superclass must be a class.");
            return INTERPRET_RUNTIME_ERROR;
        }
        ObjClass *superclass = stack[top_ - 2].as_obj<ObjClass>();
        ObjClass *subclass = top.as_obj<ObjClass>();
        for (const auto &[k, v] : superclass->methods_)
        {
            subclass->methods_.insert_or_assign(k, v);
        }
        for (const auto &[k, v] : superclass->field_offsets_)
        {
            subclass->field_offsets_.insert_or_assign(k, v);
        }
        --top_;
        top = stack[top_ - 1];
    }
    NEXT();

L_OP_GET_SUPER:
    {
        ObjString *name = frame->read_string();
        ObjClass *superclass = top.as_obj<ObjClass>();
        --top_;
        top = stack[top_ - 1];
        if (!bind_method(superclass, name))
            return INTERPRET_RUNTIME_ERROR;
        top = stack[top_ - 1];
    }
    NEXT();

L_OP_SUPER_INVOKE:
    {
        ObjString *method = frame->read_string();
        int argCount = frame->read_byte();
        ObjClass *superclass = top.as_obj<ObjClass>();
        --top_;
        top = stack[top_ - 1];
        if (!invoke_from_class(superclass, method, argCount))
        {
            return INTERPRET_RUNTIME_ERROR;
        }
        top = stack[top_ - 1];
        frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
    }
    NEXT();

L_OP_ARRAY:
    {
        int count = frame->read_byte();
        auto objArray = create_obj<ObjArray>(gc_, count);
        for (int i = 0; i < count; i++)
        {
            objArray->values_.at(count - 1 - i) = top;
            --top_;
            top = top_ > 0 ? stack[top_ - 1] : Value();
        }
        SPUSH(objArray);
    }
    NEXT();

L_OP_GET_ELEMENT:
    {
        if (!stack[top_ - 2].is_obj())
        {
            runtime_error("Only objects support indexing.");
            return INTERPRET_RUNTIME_ERROR;
        }
        if (stack[top_ - 2].as<Obj *>()->is_type(objtype_of<ObjArray>()))
        {
            auto index = top.as<int>();
            --top_;
            top = stack[--top_];
            auto arr = top.as_obj<ObjArray>();
            if (index < 0 || static_cast<size_t>(index) >= arr->values_.size())
            {
                runtime_error("Index out of bounds.");
                return INTERPRET_RUNTIME_ERROR;
            }
            top = arr->values_[index];
        }
        else
        {
            auto key = top;
            --top_;
            top = stack[--top_];
            auto jsonPtr = top.as_obj<ObjJson>();
            auto it = jsonPtr->kv_.find(key);
            if (it == jsonPtr->kv_.end())
            {
                runtime_error("Key not found in JSON object.");
                return INTERPRET_RUNTIME_ERROR;
            }
            top = it->second;
        }
        stack[top_++] = top;
    }
    NEXT();

L_OP_SET_ELEMENT:
    {
        if (!stack[top_ - 3].is_obj())
        {
            runtime_error("Only objects support indexing.");
            return INTERPRET_RUNTIME_ERROR;
        }
        if (stack[top_ - 3].as<Obj *>()->is_type(objtype_of<ObjArray>()))
        {
            auto value = top;
            --top_;
            top = stack[top_ - 1];
            auto index = top.as<int>();
            --top_;
            top = stack[top_ - 1];
            auto array = top.as_obj<ObjArray>();
            int n = static_cast<int>(array->values_.size());
            if (index < 0 || index >= n)
            {
                runtime_error("Index out of bounds.");
                return INTERPRET_RUNTIME_ERROR;
            }
            array->values_[index] = value;
            top = value;
            stack[top_++] = top;
        }
        else
        {
            auto value = top;
            --top_;
            top = stack[top_ - 1];
            auto key = top;
            --top_;
            top = stack[top_ - 1];
            top.as_obj<ObjJson>()->kv_.insert_or_assign(key, value);
            top = value;
            stack[top_++] = top;
        }
    }
    NEXT();

L_OP_JSON:
    {
        int count = frame->read_byte();
        auto objJson = create_obj<ObjJson>(gc_);
        for (int i = 0; i < count; i++)
        {
            auto value = top;
            --top_;
            top = top_ > 0 ? stack[top_ - 1] : Value();
            auto key = top;
            --top_;
            top = top_ > 0 ? stack[top_ - 1] : Value();
            objJson->kv_[key] = value;
        }
        SPUSH(objJson);
    }
    NEXT();

L_OP_CREATE_COROUTINE:
    {
        try
        {
            std::vector<Value> arguments;
            auto count = frame->read_byte();
            for (int i = 0; i < count; i++)
            {
                arguments.push_back(top);
                --top_;
                top = top_ > 0 ? stack[top_ - 1] : Value();
            }
            auto closure = top.as_obj<ObjClosure>();
            --top_;
            top = top_ > 0 ? stack[top_ - 1] : Value();
            auto coroutine = create_obj<ObjCoroutine>(gc_, closure, arguments);
            SPUSH(coroutine);
            scheduler_.addObjCoroutine(coroutine);
        }
        catch (const std::exception &e)
        {
            throw std::runtime_error("Only closure can be created as a coroutine.");
        }
    }
    NEXT();

L_OP_YIELD_COROUTINE:
    {
        scheduler_.yieldCurrentObjCoroutine();
        return scheduler_.runNextObjCoroutine(co);
    }

L_OP_RESUME_COROUTINE:
    {
        scheduler_.yieldCurrentObjCoroutine();
        try
        {
            --top_;
            auto targetCo = top.as_obj<ObjCoroutine>();
            top = stack[top_ - 1];
            targetCo->parent_ = co;
            scheduler_.resumeCoroutine(targetCo);
        }
        catch (const std::exception &e)
        {
            throw std::runtime_error("Only closure can be created as a coroutine.");
        }
        current_coroutine_ = co;
        if (co->status_ == CoroutineStatus::FINISHED)
            return INTERPRET_OK;
        frame = &current_coroutine_->frames_[current_coroutine_->frame_count_ - 1];
        top = stack[top_ - 1];
    }
    NEXT();

#undef NEXT
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
}

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
    while (open_upvalues_ != nullptr &&
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
