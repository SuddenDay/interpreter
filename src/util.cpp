#include "util.hpp"
#include "chunk.hpp"
#include "memory.hpp"
int Util::disassembleInstruction(const Chunk &chunk, int offset)
{

    std::cout << std::setw(4) << std::setfill('0') << std::right << offset << " ";
    Opcode instruction = static_cast<Opcode>(chunk.getCodeAt(offset));
    auto jumpInstruction = [&](int sign, const Chunk& chunk, int offset) {
        uint16_t jump = (uint16_t)(chunk.bytecode[offset + 1] << 8);
        jump |= chunk.bytecode[offset + 2];
        std::cout << std::setfill(' ') << std::left << std::setw(16) << instruction << ' ';
	    std::cout << std::setw(4) << offset << " -> ";
	    std::cout << offset + 3 + sign * jump << '\n';
        return offset + 3;
    };
    switch (instruction)
    {
    case Opcode::OP_ADD:
    case Opcode::OP_SUB:
    case Opcode::OP_MUL:
    case Opcode::OP_CALL:
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
    case Opcode::OP_PRINT:
    case Opcode::OP_POP:
    case Opcode::OP_SET_LOCAL:
    case Opcode::OP_GET_LOCAL:
    {
        std::cout << "  " << instruction << std::endl;
        return offset + 1;
    }
    case Opcode::OP_GET_GLOBAL:
    case Opcode::OP_DEFINE_GLOBAL:
    case Opcode::OP_SET_GLOBAL:
    case Opcode::OP_CONSTANT:
    {
        int index = chunk.getCodeAt(offset + 1); // can't use uint8 because unsigned char is null
        std::cout << "  " << instruction << " [" << index << "] " << chunk.getConstAt(index)
                  << std::endl;
        return offset + 2;
    }
    case Opcode::OP_JUMP:
    case Opcode::OP_JUMP_IF_FALSE:
    {
        return jumpInstruction(1, chunk, offset);
    }
    case Opcode::OP_LOOP: {
        return jumpInstruction(-1, chunk, offset);
    }
    default:
        std::cout << "Unknown opcode " << instruction << std::endl;
        return offset + 1;
    }
}