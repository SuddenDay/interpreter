#pragma once
#include "scanner.hpp"
#include "chunk.hpp"
#include <functional>
#include <string_view>

class Compiler;
enum Precedence
{
    PREC_NONE,
    PREC_ASSIGNMENT, // =
    PREC_AND,        // and
    PREC_EQUALITY,   // == !=
    PREC_COMPARISON, // < > <= >=
    PREC_TERM,       // + -
    PREC_FACTOR,     // * /
    PREC_UNARY,      // ! -
    PREC_CALL,       // . ()
    PREC_PRIMARY
};

class Parser
{
    using ParseFn = std::function<void(Parser &)>;
    struct ParseRule
    {
        ParseFn prefix;
        ParseFn infix;
        Precedence precedence;
    };

    friend class Compiler;
public:
    Parser(const std::string_view &str);

    void errorAtCurrent();
    void error();

private:
    void errorAt(const Token &token, const std::string_view &message);
    void advance();
    void consume(TokenType type);
    void expression();
    void parsePrecedence(Precedence precedence);
    void number();
    void binary();
    void unary();
    void grouping();
    
    Token current;
    Token previous;
    bool hadError;
    bool panicMode;
    std::unordered_map<TokenType, const ParseRule&> getRule;
    Scanner scanner;
    Chunk compilingChunk;
};
