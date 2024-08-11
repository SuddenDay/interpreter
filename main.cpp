#include "chunk.hpp"
#include "opcode.hpp"
#include <iostream>

int main() {
    clox::Chunk chunk;
    uint8_t constant = chunk.addConstant(8);
    chunk.writeChunk(clox::Opcode::OP_RETURN);
    chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    chunk.writeChunk(constant);
    std::cout << chunk << std::endl;
}