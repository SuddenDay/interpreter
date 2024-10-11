#pragma once
#include "common.hpp"
#include <vector>
#include <ostream>
#include "util.hpp"
#include "opcode.hpp"
#include "memory.hpp"
#include "value.hpp"

std::ostream &operator<<(std::ostream &os, Opcode op);
std::ostream &operator<<(std::ostream &os, std::vector<Value, Allocator<Value>>& values);

class Compiler;
struct Chunk
{
    std::vector<uint8_t> bytecode;
    
    std::vector<Value, Allocator<Value>>constants;
    std::vector<int> lines;

    friend std::ostream &operator<<(std::ostream &os, const Chunk& chunk) ;
};
