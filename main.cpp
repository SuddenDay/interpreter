#include "chunk.hpp"
#include "opcode.hpp"
#include "vm.hpp"
#include <iostream>
#include <fstream>

using namespace clox;


int main(int argc, char** argv)
{
    if(argc == 1) {
        REPL();
    } else if(argc == 2) {
        runFile(argv[1]);
    } else {
        exit(1);
    }

    // clox::Chunk chunk;
    // uint8_t constant;

    // constant = chunk.addConstant(1);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // constant = chunk.addConstant(2);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_ADD);

    // constant = chunk.addConstant(3);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_MUL);

    // constant = chunk.addConstant(1);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_SUB);

    // constant = chunk.addConstant(4);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_DIV);

    // chunk.writeChunk(clox::Opcode::OP_NEGATE);
    // chunk.writeChunk(clox::Opcode::OP_RETURN);
    // // std::cout << chunk << std::endl;
    // clox::VM vm(&chunk);
    // vm.interpreter();
}