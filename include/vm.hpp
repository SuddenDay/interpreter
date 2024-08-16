#pragma once
#include "chunk.hpp"
#include <iostream>
#include <cstdarg>
#include "common.hpp"
#include "memory.hpp"
//#include "value.hpp"
#include "table.hpp"

enum InterpretResult
{
    INTERPRET_OK,
    INTERPRET_COMPILE_ERROR,
    INTERPRET_RUNTIME_ERROR,
};
class VM
{
public:
    VM(Chunk *chunk) : globals(), chunk(chunk), stack(STACK_MAX), gc(*this)
    {
        AllocBase::init(&gc);
    }
    InterpretResult run();

    template <typename Operator>
    bool Binary_OP(Operator op)
    {
        auto a = pop();
        auto b = pop();
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
    void push(Value value) { stack.at(top++) = value; }
    void resetStack() { ip = 0; }
    Value pop() { return stack.at(--top); }
    Value peek(int distance)
    {
        return stack[top - 1 - distance];
    }
    uint8_t read_byte();

    Value read_constant();

    ObjString *read_string();

    void runtimeError(const char *format, ...);
    Table globals;
    Chunk *chunk;
    int ip = 0;
    std::vector<Value> stack;
    int top = 0;
    struct GC gc;
};