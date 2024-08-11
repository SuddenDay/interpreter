#pragma once
namespace clox {
    #define OPCODE_NAMES \
    X(OP_RETURN) \
    X(OP_CONSTANT) \

    enum Opcode {
        #define X(NAME) NAME,
        OPCODE_NAMES
        #undef X
    };
}