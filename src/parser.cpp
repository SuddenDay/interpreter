#include "parser.hpp"
#include "value.hpp"
#include "opcode.hpp"
#include "tokentype.hpp"
#include <iostream>

Parser::Parser(const std::string_view& source) : scanner_(source), has_error_(false), panic_mode_(false)
{

}

void Parser::error_at_current(const std::string_view &message)
{
    error_at(current_, message);
}

void Parser::error(const std::string_view& message)
{
    error_at(previous_, message);
}

void Parser::error_at(const Token &token, const std::string_view& message)
{
    if (panic_mode_)
        return;
    panic_mode_ = true;
    std::cerr << "[line " << token.line << "] Error";

    if (token.type == TokenType::TOKEN_EOF)
        std::cerr << " at end";
    else if (token.type != TokenType::TOKEN_ERROR)
        std::cerr << " at '" << token.string << "'";

    std::cerr << ": " << message << std::endl;
    has_error_ = true;
}