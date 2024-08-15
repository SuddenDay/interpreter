#include "util.hpp"
#include "chunk.hpp"
#include "memory.hpp"
int Util::disassembleInstruction(const Chunk &chunk, int offset)
{
    std::cout << std::setw(4) << std::setfill('0') << std::right << offset << " ";
    Opcode instruction = static_cast<Opcode>(chunk.getCodeAt(offset));
    switch (instruction)
    {
    case Opcode::OP_ADD:
    case Opcode::OP_SUB:
    case Opcode::OP_MUL:
    case Opcode::OP_DIV:
    case Opcode::OP_TRUE:
    case Opcode::OP_FALSE:
    case Opcode::OP_NIL:
    case Opcode::OP_NEGATE:
    case Opcode::OP_NOT:
    case Opcode::OP_GREATER:
    case Opcode::OP_LESS:
    case Opcode::OP_EQUAL:
    case Opcode::OP_RETURN:
    {
        std::cout << "  " << instruction << std::endl;
        return offset + 1;
    }
    case Opcode::OP_CONSTANT:
    {
        int index = chunk.getCodeAt(offset + 1); // can't use uint8 because unsigned char is null
        std::cout << "  " << instruction << " [" << index << "] " << chunk.getConstAt(index)
                  << std::endl;
        return offset + 2;
    }
    default:
        std::cout << "Unknown opcode " << instruction << std::endl;
        return offset + 1;
    }
}