#include "chunk.hpp"
#include <iostream>
#include <iomanip>
namespace clox {
    std::ostream& operator<<(std::ostream& os, Opcode op) {
        const char* name = [&] () {
            switch (op)
            {
                #define X(name) \
                case Opcode::name: \
                    return #name;
                    OPCODE_NAMES
                #undef X
                default: 
                    throw std::logic_error("Unexpected opcode");
            }
        }();
        os << name;
        return os;
    }
    std::ostream& operator<<(std::ostream& os, const Chunk& chunk) {
        os << " === Bytecode === \n";
        auto disassembleInstruction = [&](const Chunk& chunk, int offset) {
            os << std::setw(4) << std::setfill('0') << std::right << offset << " ";
            Opcode instruction = static_cast<Opcode>(chunk.bytecode[offset]);
            switch (instruction) {
                case Opcode::OP_RETURN: {
                    os << "  " << instruction << std::endl;
                    return offset + 1;        
                }
                case Opcode::OP_CONSTANT: {
                    int index = chunk.bytecode[offset + 1]; // can't use uint8 because unsigned char is null
                    os << "  " << instruction << " [" << index << "] " << chunk.constants[index]
                     << std::endl; 
                    return offset + 2;
                }
                default:
                    std::cout << "Unknown opcode " << instruction << std::endl;
                    return offset + 1;
            }
        };
        for(int offset = 0; offset < chunk.bytecode.size(); ) {
            offset = disassembleInstruction(chunk, offset);
        }
        return os;
    }

    void Chunk::writeChunk(uint8_t op)
    {
        bytecode.push_back(op);
    }

    uint8_t Chunk::addConstant(Value value)
    {
        constants.push_back(value);
        return constants.size() - 1;
    }
}