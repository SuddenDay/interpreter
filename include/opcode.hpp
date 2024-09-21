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
    X(OP_SET_LOCAL) \
    X(OP_GET_LOCAL) \
    X(OP_JUMP_IF_FALSE) \
    X(OP_JUMP) \
    X(OP_LOOP) \
    X(OP_CALL) \
    X(OP_CLOSURE) \
    X(OP_GET_UPVALUE) \
    X(OP_SET_UPVALUE) \
    X(OP_CLOSE_UPVALUE) \
    X(OP_CLASS) \
    X(OP_SET_PROPERTY) \
    X(OP_GET_PROPERTY) \
    X(OP_METHOD) \
    X(OP_INVOKE) \
    X(OP_INHERIT) \
    X(OP_GET_SUPER) \
    X(OP_SUPER_INVOKE) \
    X(OP_ARRAY) \
    X(OP_JSON) \
    X(OP_GET_ELEMENT) \
    X(OP_SET_ELEMENT) \

enum Opcode
{
#define X(NAME) NAME,
    OPCODE_NAMES
#undef X
};
