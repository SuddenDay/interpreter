#pragma once
#include "scanner.hpp"
#include "chunk.hpp"
#include <functional>
#include <string_view>

class Complication;
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

struct Parser
{
    using ParseFn = std::function<void(Complication&, bool)>;
    struct ParseRule
    {
        ParseFn prefix;
        ParseFn infix;
        Precedence precedence;
    };

    Parser();

    void errorAtCurrent();
    void error();

    void errorAt(const Token &token);
    
    Token current;
    Token previous;
    bool hadError;
    bool panicMode;
    int line;
};
