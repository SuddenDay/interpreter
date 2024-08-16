#pragma once
#include "util.hpp"
#include "common.hpp"
#include "parser.hpp"
#include "scanner.hpp"
#include "memory.hpp"
#include <array>

struct Local
{
    Token name;
    int depth = -1;
    // bool is_captured = false;
};

struct Compiler
{
    std::array<Local, UINT8_MAX> locals;
    int localCount = 0;
    int scopeDepth = 0;
};

class Complication
{
public:
    Complication(Compiler *compiler, const std::string &str, VM &vm);
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
    void synchronize();
    void advance();
    void consume(TokenType type);
    void expression();
    void parsePrecedence(Precedence precedence);
    void number(bool canAssign);
    void binary(bool canAssign);
    void unary(bool canAssign);
    void grouping(bool canAssign);
    void literal(bool canAssign);
    void string(bool canAssign);
    void variable(bool canAssign);
    void statement();
    void block();
    void printStatement();
    void expressionStatement();
    void varDeclaration();
    void namedVariable(Token name, bool canAssign);
    uint8_t parseVariable();
    uint8_t identifierConstant(Token token);
    bool check(TokenType type);
    bool match(TokenType type);
    void declaration();
    void defineVariable(uint8_t global);
    void declareVariable();
    void addLocal(Token name);
    bool identifiersEqual(Token a, Token b);
    int resolveLocal(Compiler* compiler, Token name);
    void markInitialized();

    void beginScope()
    {
        current->scopeDepth++;
    }

    void endScope()
    {
        current->scopeDepth--;
        while (current->localCount > 0 &&
               current->locals[current->localCount - 1].depth >
                   current->scopeDepth)
        {
            emitByte(OP_POP);
            current->localCount--;
        }
    }

    void writeChunk(uint8_t op, int line);
    uint8_t addConstant(Value value);
    void emitConstant(Value value);
    void emitBytes(uint8_t byte1, uint8_t byte2);
    void emitReturn();
    void emitByte(uint8_t byte);
    uint8_t makeConstant(Value value);

    Scanner scanner;
    Compiler *current;
    Chunk *compilingChunk;
    Parser parser;
    VM &vm;

    std::unordered_map<TokenType, const Parser::ParseRule> getRule;
};
