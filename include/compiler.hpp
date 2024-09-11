#pragma once
#include "util.hpp"
#include "common.hpp"
#include "parser.hpp"
#include "scanner.hpp"
#include "memory.hpp"
#include <array>
#include "object.hpp"

struct VM;
struct Local
{
    Token name;
    int depth = -1;
    bool isCaptured = false;
};

enum FunctionType
{
    TYPE_FUNCTION,
    TYPE_SCRIPT
};

struct Compiler
{
    std::unique_ptr<Compiler> enclosing = nullptr;
    ObjFunction *function = nullptr;
    FunctionType type;
    std::array<Upvalue, UINT8_MAX> upvalues;
    std::array<Local, UINT8_MAX> locals;
    int localCount = 0;
    int scopeDepth = 0;
};

class Complication
{
public:
    Complication(VM &vm);
    ObjFunction *compile(const std::string_view &source);
    Chunk *currentChunk();

    auto endCompiler() -> std::pair<ObjFunction*, std::unique_ptr<Compiler>>;

    void synchronize();
    void advance();
    void consume(TokenType type, const std::string &message);
    void expression();
    void parsePrecedence(Precedence precedence);
    void number(bool canAssign);
    void binary(bool canAssign);
    void unary(bool canAssign);
    void and_(bool canAssign);
    void or_(bool canAssign);
    void grouping(bool canAssign);
    uint8_t argumentList();
    void call(bool canAssign);
    void literal(bool canAssign);
    void string(bool canAssign);
    void variable(bool canAssign);
    void statement();
    void block();
    void whileStatement();
    void forStatement();
    void emitLoop(int loopStart);
    void returnStatement();
    void printStatement();
    void ifStatement();
    void expressionStatement();
    void varDeclaration();
    void function(FunctionType type);
    void namedVariable(Token name, bool canAssign);
    uint8_t parseVariable(const std::string &message);
    uint8_t identifierConstant(Token token);
    int emitJump(Opcode instruction);
    void patchJump(int offset);
    bool check(TokenType type);
    bool match(TokenType type);
    void declaration();
    void defineVariable(uint8_t global);
    void declareVariable();
    void funDeclaration();
    void addLocal(Token name);
    bool identifiersEqual(Token a, Token b);
    void markInitialized();
    void initCompiler(FunctionType type);
    int resolveUpvalue(const std::unique_ptr<Compiler> &compiler, Token &name);
    int resolveLocal(const std::unique_ptr<Compiler> &compiler, Token name);
    int addUpvalue(const std::unique_ptr<Compiler> &compiler, int index,
                   bool isLocal);

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
            if(current->locals[current->localCount - 1].isCaptured)
                emitByte(OP_CLOSE_UPVALUE);
            else
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

    std::unique_ptr<Compiler> current;
    std::unique_ptr<Parser> parser;
    VM &vm;

    std::unordered_map<TokenType, const Parser::ParseRule> getRule;
};
