#pragma once
#include "chunk.hpp"
#include <iostream>
#include "common.hpp"

enum InterpretResult
{
    INTERPRET_OK,
    INTERPRET_COMPILE_ERROR,
    INTERPRET_RUNTIME_ERROR,
};
class VM
{
public:
    VM(Chunk *chunk) : chunk(chunk), ip(0), top(0), stack(STACK_MAX)
    {
    }
    InterpretResult run();

private:
    template <typename Operator>
    void Binary_OP(Operator op)
    {
        auto a = pop();
        auto b = pop();
        push(op(b, a));
    }
    void push(Value value) { stack.at(top++) = value; }
    Value pop() { return stack.at(--top); }
    Chunk *chunk;
    int ip;
    std::vector<Value> stack;
    int top;
};