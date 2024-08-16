#pragma once
#define OPCODE_NAMES \
    X(OP_RETURN)     \
    X(OP_CONSTANT)   \
    X(OP_NEGATE)     \
    X(OP_ADD)        \
    X(OP_SUB)        \
    X(OP_MUL)        \
    X(OP_DIV)        \
    X(OP_NIL)        \
    X(OP_TRUE)        \
    X(OP_FALSE)        \
    X(OP_NOT)        \
    X(OP_EQUAL)        \
    X(OP_GREATER)        \
    X(OP_LESS)        \
    X(OP_PRINT)        \
    X(OP_POP)        \
    X(OP_DEFINE_GLOBAL) \
    X(OP_GET_GLOBAL) \
    X(OP_SET_GLOBAL) \

enum Opcode
{
#define X(NAME) NAME,
    OPCODE_NAMES
#undef X
};
