#pragma once
#include "util.hpp"
#include "common.hpp"
#include "parser.hpp"
#include "scanner.hpp"
#include "memory.hpp"

class Compiler
{
public:
    Compiler(const std::string &str, VM& vm) ; 
    bool compile();
    Chunk *currentChunk()
    {
        return compilingChunk;
    }
    void endCompiler()
    {
        emitReturn();
#ifdef DEBUG_MODE
        if (!parser.hadError)
        {
            std::cout << compilingChunk;
        }
#endif
    }

private:
    void advance();
    void consume(TokenType type);
    void expression();
    void parsePrecedence(Precedence precedence);
    void number();
    void binary();
    void unary();
    void grouping();
    void literal();
    void string();

    void writeChunk(uint8_t op, int line);
    uint8_t addConstant(Value value);
    void emitConstant(Value value);
    void emitBytes(uint8_t byte1, uint8_t byte2);
    void emitReturn();
    void emitByte(uint8_t byte);
    uint8_t makeConstant(Value value);

    Scanner scanner;
    Chunk* compilingChunk;
    Parser parser;
    VM& vm;

    std::unordered_map<TokenType, const Parser::ParseRule> getRule;
};
