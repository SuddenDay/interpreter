#include "vm.hpp"
#include <iostream>
#include <functional>
#include "util.hpp"
#include "objstring.hpp"
#include "value.hpp"

uint8_t VM::read_byte()
{
    return chunk->getCodeAt(ip++);
}

Value VM::read_constant()
{
    return chunk->getConstAt(read_byte());
}

ObjString *VM::read_string()
{
    return read_constant().as_obj<ObjString>();
}

bool is_falsey(const Value &value)
{
    return value.is_nil() ||
           (value.is_bool() && !value.as<bool>());
}
InterpretResult VM::run()
{
    gc.running = true;
    for (;;)
    {
#ifdef DEBUG_MODE
        printf("           stackframe: ");
        for (int i = 0; i < top; i++)
            std::cout << "[ " << stack[i] << " ]";
        std::cout << "\n";
        Util::disassembleInstruction(*chunk, ip);
#endif
        uint8_t instruction = read_byte();
        switch (instruction)
        {
        case Opcode::OP_RETURN:
        {
            return INTERPRET_OK;
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
            push(read_constant());
            break;
        }
        case Opcode::OP_ADD:
        {
            if (peek(0).is_obj_type<ObjString>() && peek(1).is_obj_type<ObjString>())
            {
                auto b = peek(0).as_obj<ObjString>();
                auto a = peek(1).as_obj<ObjString>();
                auto res = create_obj_string((*a) + (*b), *this);
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
            auto name = read_string();
            globals.insert_or_assign(name, peek(0));
            pop();
            break;
        }
        case Opcode::OP_GET_GLOBAL:
        {
            auto name = read_string();
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
            auto name = read_string();
            globals.insert_or_assign(name, peek(0)); // modify ?
            break;
        }
        case Opcode::OP_POP:
        {
            pop();
            break;
        }
        default:
            std::cout << Opcode(instruction) << " error" << std::endl;
            break;
        }
    }
}

void VM::runtimeError(const char *format, ...)
{
    va_list args;
    va_start(args, format);

    char buffer[1024];
    vsnprintf(buffer, sizeof(buffer), format, args);
    va_end(args);

    std::cerr << buffer << std::endl;

    size_t instruction = ip - 1;
    int line = chunk->getLineAt(instruction);
    std::cerr << "[line " << line << "] in script" << std::endl;

    resetStack();
}
#undef READ_BYTE
#undef READ_CONSTANT