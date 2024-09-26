#include "parser.hpp"
#include "value.hpp"
#include "opcode.hpp"
#include "tokentype.hpp"
#include <iostream>

Parser::Parser(const std::string_view& source) : scanner(source), has_error(false), panic_mode(false)
{

}

void Parser::error_at_current(const std::string_view &message)
{
    errorAt(current, message);
}

void Parser::error(const std::string_view& message)
{
    errorAt(previous, message);
}

void Parser::errorAt(const Token &token, const std::string_view& message)
{
    if (panic_mode)
        return;
    panic_mode = true;
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
    has_error = true;
}