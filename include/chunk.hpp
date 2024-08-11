#pragma once
#include "common.hpp"
#include <vector>
#include <ostream>
#include "opcode.hpp"
#include "value.hpp"
namespace clox {

    std::ostream& operator<<(std::ostream& os, Opcode op);

    class Chunk {
        private:
            using Bytecode_vector = std::vector<uint8_t>;
            Bytecode_vector bytecode;
            ValueArray constants;
        public:
            void writeChunk(uint8_t op);
            uint8_t addConstant(Value value);
            friend std::ostream& operator<<(std::ostream& os, const Chunk& chunk);
            uint8_t getCodeAt(int index) const {
                return bytecode.at(index);
            }

            Value getConstAt(int index) const {
                return constants.at(index);
            }
    };
    
}