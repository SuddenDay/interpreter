#pragma once
#include <vector>
#include <ostream>
#include "opcode.hpp"
#include "memory.hpp"
#include "value.hpp"

std::ostream &operator<<(std::ostream &os, Opcode op);
std::ostream &operator<<(std::ostream &os, std::vector<Value, Allocator<Value>> &values);

class Compiler;
struct Chunk
{
    std::vector<uint8_t> bytecode_;

    std::vector<Value, Allocator<Value>> constants_;
    std::vector<int> lines_;

    friend std::ostream &operator<<(std::ostream &os, const Chunk &chunk);
};
