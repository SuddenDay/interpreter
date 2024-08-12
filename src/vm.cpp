#include "vm.hpp"
#include <iostream>
#include <functional>
#include "util.hpp"

    #define READ_BYTE() (chunk->getCodeAt(ip++))
    #define READ_CONSTANT() (chunk->getConstAt(READ_BYTE()))
    InterpretResult VM::run() {
        for (;;) {
            #ifdef DEBUG_MODE
            printf("           stackframe: ");
            for(int i = 0; i < top; i++)
                std::cout << "[ " << stack[i] << " ]";
            std::cout << "\n";
            Util::disassembleInstruction(*chunk, ip);
            #endif
            switch (uint8_t instruction = READ_BYTE()){
                case Opcode::OP_RETURN: {
                    std::cout << pop() << std::endl;
                    return INTERPRET_OK;
                }
                case Opcode::OP_NEGATE: {
                    push(-pop());
                    break;
                }
                case Opcode::OP_CONSTANT: {
                    push(READ_CONSTANT());
                    break;
                }
                case Opcode::OP_ADD: {
                    Binary_OP(std::plus<Value>());
                    break;
                }
                case Opcode::OP_SUB: {
                    Binary_OP(std::minus<Value>());
                    break;
                }
                case Opcode::OP_MUL: {
                    Binary_OP(std::multiplies<Value>());
                    break;
                }
                case Opcode::OP_DIV: {
                    Binary_OP(std::divides<Value>());
                    break;
                }
                default:
                    std::cout<<"error"<<std::endl;
                    break;
            }
        }
    }
    #undef READ_BYTE
    #undef READ_CONSTANT