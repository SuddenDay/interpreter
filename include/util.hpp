#pragma once
#include "opcode.hpp"
#include <iostream>
#include <iomanip>

class Chunk;
class Util
{
public:
    static int disassembleInstruction(const Chunk& chunk, int offset);
};