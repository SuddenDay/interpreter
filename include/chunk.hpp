#pragma once
#include "common.hpp"
#include <vector>
#include <ostream>
#include "util.hpp"
#include "opcode.hpp"
#include "memory.hpp"
#include "value.hpp"

std::ostream &operator<<(std::ostream &os, Opcode op);

class Compiler;
struct Chunk
{
    using Bytecode_vector = std::vector<uint8_t>;
    Bytecode_vector bytecode;
    
    std::vector<Value, Allocator<Value>>constants;
    std::vector<int> lines;

    int getLineAt(int index);
    friend std::ostream &operator<<(std::ostream &os, const Chunk& chunk) ;
};
