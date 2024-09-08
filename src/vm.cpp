#include "vm.hpp"
#include <iostream>
#include <functional>
#include "util.hpp"
#include "objstring.hpp"
#include "object.hpp"
#include "value.hpp"
#include "native.hpp"

VM::VM() : cu(*this), globals(), stack(STACK_MAX), gc(*this)
{
    AllocBase::init(&gc);
    defineNative("clock", Native::clock);
}

bool VM::callValue(const Value &callee, uint8_t argCount)
{
    if (callee.is_obj())
    {
        switch (callee.as<Obj *>()->type)
        {
            // 	case ObjType::BoundMethod:
            // 	{
            // 		auto bound = callee.as_obj<ObjBoundMethod>();
            // 		stacktop[-arg_count - 1] = bound->receiver;
            // 		return call(bound->method, arg_count);
            // 	}
            // 	case ObjType::Class:
            // 	{
            // 		auto klass = callee.as_obj<ObjClass>();
            // 		stacktop[-arg_count - 1] = create_obj<ObjInstance>(gc, klass);
            // 		try
            // 		{
            // 			auto& initializer = klass->methods.at(init_string);
            // 			return call(initializer.as_obj<ObjClosure>(), arg_count);
            // 		} catch (const std::out_of_range&)
            // 		{
            // 			if (arg_count != 0)
            // 			{
            // 				runtime_error("Expected 0 arguments but got ", arg_count, " .");
            // 				return false;
            // 			}
            // 		}
            // 		return true;
            // 	}
        case ObjType::Function:
            return call(callee.as_obj<ObjFunction>(), argCount);
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
    runtimeError("Can only call functions and classes.");
    return false;
}

bool VM::call(ObjFunction *function, int argCount)
{
    if (argCount != function->arity)
    {
        runtimeError("Expected ", function->arity, " arguments but got", argCount);
        return false;
    }
    if (frameCount >= FRAMES_MAX)
    {
        runtimeError("Stack overflow.");
        return false;
    }
    CallFrame *frame = &frames[frameCount++];
    frame->function = function;
    frame->ip = 0;
    frame->slots = stack.data() + top - argCount - 1;
    return true;
}

void VM::defineNative(std::string_view name, NativeFn function)
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
    push(function);
    call(function, 0);
    return run();
}

bool is_falsey(const Value &value)
{
    return value.is_nil() ||
           (value.is_bool() && !value.as<bool>());
}


InterpretResult VM::run()
{
    CallFrame *frame = &frames[frameCount - 1];
    for (;;)
    {
#ifdef DEBUG_MODE
        printf("           stackframe: ");
        for (int i = 0; i < top; i++)
            std::cout << "[ " << stack.at(i) << " ]";
        std::cout << "\n";
        Util::disassembleInstruction(frame->function->chunk, frame->ip);
#endif
        uint8_t instruction = frame->read_byte();
        switch (instruction)
        {
        case Opcode::OP_RETURN:
        {
            Value result = pop();
            frameCount--;
            if (frameCount == 0)
            {
                pop();
                return INTERPRET_OK;
            }
            top = frame->slots - stack.data();
            push(result);
            frame = &frames[frameCount - 1];
            break;
        }
        case Opcode::OP_NEGATE:
        {
            if (!peek(0).is_number())
            {
                runtimeError("Operand must be number.");
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
                runtimeError("Operands must be two numbers or two strings.");
                return INTERPRET_RUNTIME_ERROR;
            }
            break;
        }
        case Opcode::OP_SUB:
        {
            if (!Binary_OP(std::minus<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_MUL:
        {
            if (!Binary_OP(std::multiplies<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_DIV:
        {
            if (!Binary_OP(std::divides<Value>()))
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
            if (!Binary_OP(std::equal_to<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_GREATER:
        {
            if (!Binary_OP(std::greater<Value>()))
                return INTERPRET_RUNTIME_ERROR;
            break;
        }
        case Opcode::OP_LESS:
        {
            if (!Binary_OP(std::less<Value>()))
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
                runtimeError("Undefined variable ", name->text());
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
            uint8_t slot = frame->read_byte();
            push(frame->slots[slot]);
            break;
        }
        case Opcode::OP_SET_LOCAL:
        {
            uint8_t slot = frame->read_byte();
            frame->slots[slot] = peek(0);
            break;
        }
        case Opcode::OP_JUMP_IF_FALSE:
        {
            uint16_t offset = frame->read_short();
            if (is_falsey(peek(0)))
                frame->ip += offset;
            break;
        }
        case Opcode::OP_JUMP:
        {
            uint16_t offset = frame->read_short();
            frame->ip += offset;
            break;
        }
        case Opcode::OP_LOOP:
        {
            uint16_t offset = frame->read_short();
            frame->ip -= offset;
            break;
        }
        case Opcode::OP_CALL:
        {
            int argCount = frame->read_byte();
            if (!callValue(peek(argCount), argCount))
                return INTERPRET_RUNTIME_ERROR;
            frame = &frames[frameCount - 1];
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
    return function->chunk.getCodeAt(ip++);
}
Value CallFrame::read_constant() { return function->chunk.constants.at(read_byte()); }
uint16_t CallFrame::read_short()
{
    ip += 2;
    auto a = function->chunk.getCodeAt(ip - 2) << 8;
    auto b = function->chunk.getCodeAt(ip - 1);
    return static_cast<uint16_t>(a | b);
};
ObjString *CallFrame::read_string()
{
    return read_constant().as_obj<ObjString>();
}
void VM::push(Value value) { stack.at(top++) = value; }
void VM::resetStack() { top = frameCount = 0; }
Value VM::pop() { return stack.at(--top); }
Value VM::peek(int distance)
{
    return stack[top - 1 - distance];
}
template <typename Operator>
bool VM::Binary_OP(Operator op)
{
    Value a = pop();
    Value b = pop();
    if (!(
            (a.is_number() && b.is_number()) ||
            (a.is_bool() && b.is_bool()) ||
            (a.is_obj() && b.is_obj())))
    {
        runtimeError("Operands do not fit");
        return false;
    }
    push(op(b, a));
    return true;
}

template <typename... Args>
void VM::runtimeError(Args &&...args)
{
    static_assert(sizeof...(Args) > 0);
    (std::cerr << ... << std::forward<Args>(args));
    std::cerr << '\n';
    for (int i = frameCount - 1; i >= 0; i--)
    {
        const auto &frame = frames.at(i);
        auto function = frame.function;
        auto instruction = frame.ip - 1;
        auto line = function->chunk.lines.at(instruction);
        std::cerr << "[line " << line << "] in ";
        if (function->name == nullptr)
            std::cerr << "script\n";
        else
            std::cerr << function->name->text() << "()\n";
    }
    resetStack();
}
