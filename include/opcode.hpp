#pragma once
namespace clox {
    #define OPCODE_NAMES \
    X(OP_RETURN) \
    X(OP_CONSTANT) \
    X(OP_NEGATE) \
    X(OP_ADD) \
    X(OP_SUB) \
    X(OP_MUL) \
    X(OP_DIV) \

    enum Opcode {
        #define X(NAME) NAME,
        OPCODE_NAMES
        #undef X
    };

    
}