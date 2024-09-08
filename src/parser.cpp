#include "parser.hpp"
#include "value.hpp"
#include "opcode.hpp"
#include "tokentype.hpp"
#include <iostream>

Parser::Parser(const std::string_view& source) : scanner(source), hadError(false), panicMode(false)
{

}

void Parser::errorAtCurrent(const std::string_view &message)
{
    errorAt(current, message);
}

void Parser::error(const std::string_view& message)
{
    errorAt(previous, message);
}

void Parser::errorAt(const Token &token, const std::string_view& message)
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