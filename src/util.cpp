#include "util.hpp"
#include "chunk.hpp"
#include "memory.hpp"
int Util::disassemble_instruction(const Chunk &chunk, int offset)
{
    std::cout << std::setw(4) << std::setfill('0') << std::right << offset << " ";
    Opcode instruction = static_cast<Opcode>(chunk.bytecode[offset]);
    auto jumpInstruction = [&](int sign, const Chunk &chunk, int offset)
    {
        uint16_t jump = (uint16_t)(chunk.bytecode[offset + 1] << 8);
        jump |= chunk.bytecode[offset + 2];
        std::cout << std::setfill(' ') << std::left << std::setw(16) << instruction << ' ';
        std::cout << std::setw(4) << offset << " -> ";
        std::cout << offset + 3 + sign * jump << '\n';
        return offset + 3;
    };
    switch (instruction)
    {
    case Opcode::OP_CALL:
    case Opcode::OP_SET_LOCAL:
    case Opcode::OP_GET_LOCAL:
    case Opcode::OP_SET_UPVALUE:
    case Opcode::OP_GET_UPVALUE:
    case Opcode::OP_GET_SUPER:
    {
        auto slot = chunk.bytecode[offset + 1];
        std::cout << "  " << instruction << " [" << static_cast<int>(slot) << "] " << std::endl;
        return offset + 2;
    }
    case Opcode::OP_CLOSE_UPVALUE:
    case Opcode::OP_ADD:
    case Opcode::OP_SUB:
    case Opcode::OP_MUL:
    case Opcode::OP_DIV:
    case Opcode::OP_TRUE:
    case Opcode::OP_FALSE:
    case Opcode::OP_NIL:
    case Opcode::OP_NEGATE:
    case Opcode::OP_NOT:
    case Opcode::OP_GREATER:
    case Opcode::OP_LESS:
    case Opcode::OP_EQUAL:
    case Opcode::OP_RETURN:
    case Opcode::OP_PRINT:
    case Opcode::OP_POP:
    case Opcode::OP_GET_ELEMENT:
    case Opcode::OP_SET_ELEMENT:
    case Opcode::OP_INHERIT:
    case Opcode::OP_JSON:
    case Opcode::OP_BREAK:
    case Opcode::OP_CONTINUE:
    {
        std::cout << "  " << instruction << std::endl;
        return offset + 1;
    }
    case Opcode::OP_ARRAY:
    {
        int count = chunk.bytecode[offset + 1]; // can't use uint8 because unsigned char is null
        std::cout << "  " << instruction << " size: " << count << std::endl;
        return offset + 2;
    }
    case Opcode::OP_GET_GLOBAL:
    case Opcode::OP_DEFINE_GLOBAL:
    case Opcode::OP_SET_GLOBAL:
    case Opcode::OP_CONSTANT:
    case Opcode::OP_GET_PROPERTY:
    case Opcode::OP_SET_PROPERTY:
    case Opcode::OP_METHOD:
    case Opcode::OP_CLASS:
    case Opcode::OP_FUNCTION:
    {
        int index = chunk.bytecode[offset + 1]; // can't use uint8 because unsigned char is null
        std::cout << "  " << instruction << " [" << index << "] " << chunk.constants[index]
                  << std::endl;
        return offset + 2;
    }
    case Opcode::OP_JUMP:
    case Opcode::OP_JUMP_IF_FALSE:
    {
        return jumpInstruction(1, chunk, offset);
    }
    case Opcode::OP_LOOP:
    {
        return jumpInstruction(-1, chunk, offset);
    }
    case Opcode::OP_CLOSURE:
    {
        offset++;
        int constant = chunk.bytecode[offset++];
        std::cout << "  " << instruction << " [" << constant << "] " << chunk.constants[constant] << std::endl;
        return offset;
    }
    case Opcode::OP_SUPER_INVOKE:
    case Opcode::OP_INVOKE:
    {
        auto constant = chunk.bytecode[offset + 1];
        auto argCount = chunk.bytecode[offset + 2];
        std::cout << "  " << instruction << "(args: " << int(argCount) << ") [" << constant << "] " << chunk.constants[constant] << std::endl;
        return offset + 3;
    }
    default:
        std::cout << "Unknown opcode " << instruction << std::endl;
        return offset + 1;
    }
}

int Util::get_next_loop(const Chunk &chunk, int offset)
{
    int count = 0;
    auto find_loop = [&]() -> int
    {
        auto instruction = chunk.bytecode[offset];
        switch (instruction)
        {
        case Opcode::OP_CALL:
        case Opcode::OP_SET_LOCAL:
        case Opcode::OP_GET_LOCAL:
        case Opcode::OP_SET_UPVALUE:
        case Opcode::OP_GET_UPVALUE:
        case Opcode::OP_GET_SUPER:
            return 2;
        case Opcode::OP_CLOSE_UPVALUE:
        case Opcode::OP_ADD:
        case Opcode::OP_SUB:
        case Opcode::OP_MUL:
        case Opcode::OP_DIV:
        case Opcode::OP_TRUE:
        case Opcode::OP_FALSE:
        case Opcode::OP_NIL:
        case Opcode::OP_NEGATE:
        case Opcode::OP_NOT:
        case Opcode::OP_GREATER:
        case Opcode::OP_LESS:
        case Opcode::OP_EQUAL:
        case Opcode::OP_RETURN:
        case Opcode::OP_PRINT:
        case Opcode::OP_POP:
        case Opcode::OP_GET_ELEMENT:
        case Opcode::OP_SET_ELEMENT:
        case Opcode::OP_INHERIT:
        case Opcode::OP_JSON:
        case Opcode::OP_CONTINUE:
        case Opcode::OP_BREAK:
            return 1;
        case Opcode::OP_ARRAY:
            return 2;
        case Opcode::OP_GET_GLOBAL:
        case Opcode::OP_DEFINE_GLOBAL:
        case Opcode::OP_SET_GLOBAL:
        case Opcode::OP_CONSTANT:
        case Opcode::OP_GET_PROPERTY:
        case Opcode::OP_SET_PROPERTY:
        case Opcode::OP_METHOD:
        case Opcode::OP_CLASS:
        case Opcode::OP_FUNCTION:
            return 2;
        case Opcode::OP_JUMP:
        case Opcode::OP_JUMP_IF_FALSE:
            return 3;
        case Opcode::OP_LOOP:
            return -1;
        case Opcode::OP_CLOSURE:
            return 2;
        case Opcode::OP_SUPER_INVOKE:
        case Opcode::OP_INVOKE:
            return 3;
        default:
            throw std::runtime_error("Unknow opcode in count loop offset.");
        }
    };
    while (true)
    {
        auto size = find_loop();
        if(size == -1) break;
        count += size;
        offset += size;
    }
    return count;
}