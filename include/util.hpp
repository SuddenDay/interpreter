#pragma once
#include "opcode.hpp"
#include <iostream>
#include <iomanip>

class Chunk;
class Util
{
public:
    static int disassemble_instruction(const Chunk &chunk, int offset);
};