#pragma once
#include "common.hpp"
#include <vector>
#include <ostream>
#include "opcode.hpp"
#include "value.hpp"
namespace clox {

    std::ostream& operator<<(std::ostream& os, Opcode op);

    class Chunk {
        public:
            void writeChunk(uint8_t op);
            uint8_t addConstant(Value value);
            friend std::ostream& operator<<(std::ostream& os, const Chunk& chunk);
        private:
            using Bytecode_vector = std::vector<uint8_t>;
            Bytecode_vector bytecode;
            ValueArray constants;
    };
    
}