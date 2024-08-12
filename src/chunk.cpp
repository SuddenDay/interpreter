#include "chunk.hpp"
#include <iostream>
#include <iomanip>
#include "util.hpp"
std::ostream &operator<<(std::ostream &os, Opcode op)
{
    const char *name = [&]()
    {
        switch (op)
        {
#define X(name)        \
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

std::ostream &operator<<(std::ostream &os, const Chunk &chunk)
{
    os << " === Bytecode === \n";
    for (int offset = 0; offset < chunk.bytecode.size();)
    {
        offset = Util::disassembleInstruction(chunk, offset);
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

void Chunk::emitConstant(Value value)
{
    emitBytes(OP_CONSTANT, makeConstant(value));
}
void Chunk::emitBytes(uint8_t byte1, uint8_t byte2)
{
    emitByte(byte1);
    emitByte(byte2);
}
void Chunk::emitReturn()
{
    emitByte(Opcode::OP_RETURN);
}
void Chunk::emitByte(uint8_t byte)
{
    writeChunk(byte); // TODO
}

uint8_t Chunk::makeConstant(Value value)
{
    int constant = addConstant(value);
    if (constant > UINT8_MAX)
    {
        throw std::logic_error("Too many constants in one chunk.");
        return 0;
    }
    return (uint8_t)constant;
}
