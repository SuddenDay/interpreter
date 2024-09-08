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
    PREC_OR,        // or
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

    Parser(const std::string_view&);

    void errorAtCurrent(const std::string_view& message);
    void error(const std::string_view& message);

    void errorAt(const Token &token, const std::string_view& message);
    
    Scanner scanner;
    Token current;
    Token previous;
    bool hadError;
    bool panicMode;
    int line;
};
