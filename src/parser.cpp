#include "parser.hpp"
#include "value.hpp"
#include "opcode.hpp"
#include "tokentype.hpp"
#include <iostream>

Parser::Parser() : hadError(false), panicMode(false)
{

}

void Parser::errorAtCurrent()
{
    errorAt(current, current.string);
}

void Parser::error()
{
    errorAt(previous, previous.string);
}

void Parser::errorAt(const Token &token, const std::string_view &message)
{
    if (panicMode)
        return;
    panicMode = true;
    std::cerr << "[line " << token.line << "] Error";

    if (token.type == TokenType::TOKEN_EOF)
    {
        std::cerr << " at end";
    }
    else if (token.type != TokenType::TOKEN_ERROR)
    {
        std::cerr << " at '" << token.string << "'";
    }

    std::cerr << ": " << message << std::endl;
    hadError = true;
}