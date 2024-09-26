#include "vm.hpp"
#include <iostream>
#include <functional>
#include "util.hpp"
#include "objstring.hpp"
#include "object.hpp"
#include "value.hpp"
#include "native.hpp"
#include <string_view>

VM::VM() : cu(*this), globals(), stack(STACK_MAX), gc(*this)
{
    AllocBase::init(&gc);
    init_string = create_obj_string(std::string_view("init"), *this);
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
        switch (callee.as<Obj *>()->type)
        {
        case ObjType::BoundMethod:
        {
            auto bound = callee.as_obj<ObjBoundMethod>();
            stack[top - argCount - 1] = bound->receiver;
            return call(bound->method, argCount);
        }
        case ObjType::Class:
        {
            auto klass = callee.as_obj<ObjClass>();
            stack.at(top - 1 - argCount) = create_obj<ObjInstance>(gc, klass);
            Value initializer;
            if (klass->methods.find(init_string) != klass->methods.end())
            {
                initializer = klass->methods.at(init_string);
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
            auto native = callee.as_obj<ObjNative>()->function;
            auto result = native(argCount, stack.data() + top - argCount);
            top -= argCount + 1;
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
    if (argCount != closure->function->arity)
    {
        runtime_error("Expected ", closure->function->arity, " arguments but got", argCount);
        return false;
    }
    if (frame_count >= FRAMES_MAX)
    {
        runtime_error("Stack overflow.");
        return false;
    }
    CallFrame &frame = frames[frame_count++];
    frame.closure = closure;
    frame.ip = 0;
    frame.slots = stack.data() + top - argCount - 1;
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

    if (instance->fields.find(name) != instance->fields.end())
    {
        Value value = instance->fields.at(name);
        stack[top - argCount - 1] = value;
        return call_value(value, argCount);
    }

    return invoke_from_class(instance->objClass, name, argCount);
}

bool VM::invoke_from_class(ObjClass *klass, ObjString *name,
                         int argCount)
{
    if (klass->methods.find(name) == klass->methods.end())
    {
        runtime_error("Undefined property ", name, ".");
        return false;
    }
    auto method = klass->methods.at(name);
    return call(method.as_obj<ObjClosure>(), argCount);
}

ObjUpvalue *VM::capture_upvalue(Value *local)
{
    ObjUpvalue *prevUpvalue = NULL;
    ObjUpvalue *upvalue = open_upvalues;
    while (upvalue != nullptr && upvalue->location > local)
    {
        prevUpvalue = upvalue;
        upvalue = upvalue->next;
    }

    if (upvalue != NULL && upvalue->location == local)
        return upvalue;

    ObjUpvalue *createdUpvalue = create_obj<ObjUpvalue>(gc, local);
    createdUpvalue->next = upvalue;

    if (prevUpvalue == NULL)
        open_upvalues = createdUpvalue;
    else
        prevUpvalue->next = createdUpvalue;

    return createdUpvalue;
}

void VM::define_native(std::string_view name, NativeFn function)
{
    push(create_obj_string(name, *this));
    push(create_obj<ObjNative>(gc, function, name));
    globals.insert_or_assign(stack.at(0).as_obj<ObjString>(), stack.at(1));
    pop();
    pop();
}

InterpretResult VM::interpret(const std::string &source)
{
    ObjFunction *function = cu.compile(source);
    if (function == nullptr)
        return InterpretResult::INTERPRET_COMPILE_ERROR;
    push(function); // for garbage collect
    ObjClosure *closure = create_obj<ObjClosure>(gc, function);
    pop();
    push(closure);
    call(closure, 0); // generate latest frame
    return run();
}

bool is_falsey(const Value &value)
{
    return value.is_nil() ||
           (value.is_bool() && !value.as<bool>());
}

InterpretResult VM::run()
{
    CallFrame *frame = &frames[frame_count - 1];
    for (;;)
    {
#ifdef DEBUG_MODE
        printf("           stackframe: ");
        for (int i = 0; i < top; i++)
            std::cout << "[ " << stack.at(i) << " ]";
        std::cout << "\n";
        Util::disassemble_instruction(frame->closure->function->chunk, frame->ip);
#endif
        uint8_t instruction = frame->read_byte();
        switch (instruction)
        {
        case Opcode::OP_RETURN:
        {
            Value result = pop();
            close_upvalues(frame->slots);
            frame_count--; // leave current frame
            if (frame_count == 0)
            {
                pop();
                return INTERPRET_OK;
            }
            top = frame->slots - stack.data();
            push(result);
            frame = &frames[frame_count - 1];
            break;
        }
        case Opcode::OP_NEGATE:
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
        case Opcode::OP_CONSTANT:
        {
            push(frame->read_constant());
            break;
        }
        case Opcode::OP_ADD:
        {
            if (peek(0).is_obj_type<ObjString>() && peek(1).is_obj_type<ObjString>())
            {
                auto b = peek(0).as_obj<ObjString>();
                auto a = peek(1).as_obj<ObjString>();
                auto res = create_obj_string(std::string_view(a->content + b->content), *this);
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
        case Opcode::OP_SUB:
        {
            if (!binary_op(std::minus<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_MUL:
        {
            if (!binary_op(std::multiplies<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_DIV:
        {
            if (!binary_op(std::divides<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_TRUE:
        {
            push(Value(true));
            break;
        }
        case Opcode::OP_FALSE:
        {
            push(Value(false));
            break;
        }
        case Opcode::OP_NIL:
        {
            push(Value());
            break;
        }
        case Opcode::OP_NOT:
        {
            push(is_falsey(pop()));
            break;
        }
        case Opcode::OP_EQUAL:
        {
            if (!binary_op(std::equal_to<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_GREATER:
        {
            if (!binary_op(std::greater<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_LESS:
        {
            if (!binary_op(std::less<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_PRINT:
        {
            std::cout << pop() << std::endl;
            break;
        }
        case Opcode::OP_DEFINE_GLOBAL:
        {
            auto name = frame->read_string();
            globals.insert_or_assign(name, peek(0));
            pop();
            break;
        }
        case Opcode::OP_GET_GLOBAL:
        {
            auto name = frame->read_string();
            try
            {
                auto &value = globals.at(name);
                push(value);
            }
            catch (const std::out_of_range &)
            {
                runtime_error("Undefined variable ", name->text());
                return INTERPRET_RUNTIME_ERROR;
            }
            break;
        }
        case Opcode::OP_SET_GLOBAL:
        {
            auto name = frame->read_string();
            globals.insert_or_assign(name, peek(0)); // modify ?
            break;
        }
        case Opcode::OP_POP:
        {
            pop();
            break;
        }
        case Opcode::OP_GET_LOCAL:
        {
            int slot = frame->read_byte();
            push(frame->slots[slot]);
            break;
        }
        case Opcode::OP_SET_LOCAL:
        {
            int slot = frame->read_byte();
            frame->slots[slot] = peek(0);
            break;
        }
        case Opcode::OP_JUMP_IF_FALSE:
        {
            int offset = frame->read_short();
            if (is_falsey(peek(0)))
                frame->ip += offset;
            break;
        }
        case Opcode::OP_JUMP:
        {
            int offset = frame->read_short();
            frame->ip += offset;
            break;
        }
        case Opcode::OP_LOOP:
        {
            int offset = frame->read_short();
            frame->ip -= offset;
            break;
        }
        case Opcode::OP_CONTINUE:
        case Opcode::OP_BREAK:
        {
            // int offset = Util::get_next_loop(frame->closure->function->chunk, frame->ip);
            // frame->ip += offset;
            int is_break = (instruction == OP_BREAK);
            int offset = frame->read_short();
            frame->ip = offset + is_break;  
            break;
        }
            // int offset = Util::get_next_loop(frame->closure->function->chunk, frame->ip);
            // frame->ip += offset + 4;
        case Opcode::OP_CALL:
        {
            int argCount = frame->read_byte();
            if (!call_value(peek(argCount), argCount))
                return INTERPRET_RUNTIME_ERROR;
            frame = &frames[frame_count - 1]; // frame update, enter into function scope
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
            auto closure = create_obj<ObjClosure>(gc, function);
            push(closure);
            for (int i = 0; i < closure->upvalue_count(); i++)
            {
                auto is_local = frame->read_byte();
                auto index = frame->read_byte();
                if (is_local)
                    closure->upvalues.at(i) = capture_upvalue(frame->slots + index);
                else
                    closure->upvalues.at(i) = frame->closure->upvalues.at(index);
            }
            break;
        }
        case OP_CLOSE_UPVALUE:
        {
            close_upvalues(stack.data() + top - 1);
            pop();
            break;
        }
        case OP_GET_UPVALUE:
        {
            uint8_t slot = frame->read_byte();
            push(*frame->closure->upvalues[slot]->location);
            break;
        }
        case OP_SET_UPVALUE:
        {
            uint8_t slot = frame->read_byte();
            *frame->closure->upvalues[slot]->location = peek(0);
            break;
        }
        case OP_CLASS:
        {
            push(create_obj<ObjClass>(gc, frame->read_string()));
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
                auto &value = instance->fields.at(name);
                pop();
                push(value);
            }
            catch (const std::out_of_range &)
            {
                if (!bind_method(instance->objClass, name))
                    return INTERPRET_RUNTIME_ERROR;
            }
            break;
        }
        case OP_SET_PROPERTY:
        {
            auto instance = peek(1).as_obj<ObjInstance>();
            instance->fields.insert_or_assign(frame->read_string(), peek(0));
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
            frame = &frames[frame_count - 1];
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
            for (const auto &[k, v] : superclass->methods)
            {
                subclass->methods.insert_or_assign(k, v);
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
            frame = &frames[frame_count - 1];
            break;
        }
        case OP_ARRAY:
        {
            int count = frame->read_byte();
            auto objArray = create_obj<ObjArray>(this->gc, count);
            for (int i = 0; i < count; i++)
                objArray->values.at(count - 1 - i) = pop();
            push(objArray);
            break;
        }
        case OP_GET_ELEMENT:
        {
            if (peek(1).as<Obj *>()->is_type(objtype_of<ObjArray>()))
            {
                auto index = pop().as<int>();
                auto value = pop().as_obj<ObjArray>()->values.at(index);
                push(value);
            }
            else
            { // json
                auto key = pop();
                auto value = pop().as_obj<ObjJson>()->kv[key];
                push(value);
            }
            break;
        }
        case OP_SET_ELEMENT:
        {
            if (peek(2).as<Obj *>()->is_type(objtype_of<ObjArray>()))
            {
                auto value = pop();
                auto index = pop().as<int>();
                auto array = pop().as_obj<ObjArray>();
                int n = array->values.size();
                if (index >= n)
                    runtime_error("Index is larger than array size.");
                array->values.at(index) = value;
                push(value);
            }
            else
            {
                auto value = pop();
                auto key = pop();
                pop().as_obj<ObjJson>()->kv.insert_or_assign(key, value);
                push(value);
            }
            break;
        }
        case OP_JSON:
        {
            int count = frame->read_byte();
            auto objJson = create_obj<ObjJson>(this->gc);
            for (int i = 0; i < count; i++)
            {
                auto value = pop();
                auto key = pop();
                objJson->kv[key] = value;
            }
            push(objJson);
            break;
        }
        default:
            std::cout << Opcode(instruction) << " error" << std::endl;
            break;
        }
    }
}

uint8_t CallFrame::read_byte()
{
    return closure->function->chunk.bytecode[ip++];
}
Value CallFrame::read_constant() { return closure->function->chunk.constants.at(read_byte()); }
uint16_t CallFrame::read_short()
{
    ip += 2;
    auto a = closure->function->chunk.bytecode[ip - 2] << 8;
    auto b = closure->function->chunk.bytecode[ip - 1];
    return static_cast<uint16_t>(a | b);
};
ObjString *CallFrame::read_string()
{
    return read_constant().as_obj<ObjString>();
}
void VM::push(Value value) { stack.at(top++) = value; }
void VM::reset_stack()
{
    top = frame_count = 0;
    open_upvalues = nullptr;
}
Value VM::pop() { return stack.at(--top); }
Value VM::peek(int distance)
{
    return stack[top - 1 - distance];
}
void VM::close_upvalues(Value *last)
{
    while (open_upvalues != NULL &&
           open_upvalues->location >= last)
    {
        ObjUpvalue *upvalue = open_upvalues;
        upvalue->closed = *upvalue->location;
        upvalue->location = &upvalue->closed;
        open_upvalues = upvalue->next;
    }
}
void VM::define_method(ObjString *name)
{
    Value method = peek(0);
    ObjClass *klass = peek(1).as_obj<ObjClass>();
    klass->methods.insert_or_assign(name, method);
    pop();
}

bool VM::bind_method(ObjClass *klass, ObjString *name)
{
    try
    {
        auto method = klass->methods.at(name);
        auto bound = create_obj<ObjBoundMethod>(gc, peek(0), method.as_obj<ObjClosure>());
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
    for (int i = frame_count - 1; i >= 0; i--)
    {
        const auto &frame = frames.at(i);
        auto function = frame.closure->function;
        auto instruction = frame.ip - 1;
        auto line = function->chunk.lines.at(instruction);
        std::cerr << "[line " << line << "] in ";
        if (function->name == nullptr)
            std::cerr << "script\n";
        else
            std::cerr << function->name->text() << "()\n";
    }
    reset_stack();
}
