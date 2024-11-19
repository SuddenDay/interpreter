#include "chunk.hpp"
#include <string_view>
#include <iostream>
#include <iomanip>
#include "util.hpp"
std::ostream &operator<<(std::ostream &os, Opcode op)
{
    auto lambda = [&]()
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
    };
    std::string_view name = lambda();
    os << name;
    return os;
}

std::ostream &operator<<(std::ostream &os, std::vector<Value, Allocator<Value>> &values)
{
    for(const auto& value : values) {
        os << value << std::endl;
    }
    // TODO: insert return statement here
    return os;
}

std::ostream &operator<<(std::ostream &os, const Chunk &chunk)
{
    for (int offset = 0; offset < static_cast<int>(chunk.bytecode_.size()); )
        offset = Util::disassemble_instruction(chunk, offset);
    return os;
}