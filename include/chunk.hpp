#pragma once
#include "common.hpp"
#include <vector>
#include <ostream>
#include "util.hpp"
#include "opcode.hpp"
#include "memory.hpp"
#include "value.hpp"

struct Value;
std::ostream &operator<<(std::ostream &os, Opcode op);

class Compiler;
struct ChunkTemplate
{
    using Bytecode_vector = std::vector<uint8_t>;
    Bytecode_vector bytecode;
    ValueArray constants;
    std::vector<int> lines;

    int getLineAt(int index) {
        return lines[index];
    }
    uint8_t getCodeAt(int index) const
    {
        return bytecode.at(index);
    }

    Value getConstAt(int index) const
    {
        return constants.at(index);
    }
};

class Chunk : public ChunkTemplate {
    public:
    friend std::ostream &operator<<(std::ostream &os, const Chunk& chunk) ;
};
