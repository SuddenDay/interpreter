#pragma once
#include "opcode.hpp"
#include <iostream>
#include <iomanip>
#include "chunk.hpp"
namespace clox {
    class Util {
        public:
        static auto disassembleInstruction(const Chunk& chunk, int offset) {
            std::cout << std::setw(4) << std::setfill('0') << std::right << offset << " ";
            Opcode instruction = static_cast<Opcode>(chunk.getCodeAt(offset));
            switch (instruction) {
                case Opcode::OP_ADD:
                case Opcode::OP_SUB:
                case Opcode::OP_MUL:
                case Opcode::OP_DIV:
                case Opcode::OP_NEGATE:
                case Opcode::OP_RETURN: {
                    std::cout << "  " << instruction << std::endl;
                    return offset + 1;        
                }
                case Opcode::OP_CONSTANT: {
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
    };
}