#include "parser.hpp"
#include "value.hpp"
#include "opcode.hpp"
#include "tokentype.hpp"
#include <iostream>

Parser::Parser(const std::string_view &str) : scanner(str), compilingChunk(), hadError(false), panicMode(false)
{
            getRule = {
{TOKEN_LEFT_PAREN,     {&Parser::grouping, NULL,   PREC_NONE}},
{TOKEN_RIGHT_PAREN,    {NULL,     NULL,   PREC_NONE}},
{TOKEN_LEFT_BRACE,     {NULL,     NULL,   PREC_NONE}}, 
{TOKEN_RIGHT_BRACE,    {NULL,     NULL,   PREC_NONE}},
{TOKEN_COMMA,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_DOT,            {NULL,     NULL,   PREC_NONE}},
{TOKEN_MINUS,          {&Parser::unary,    &Parser::binary, PREC_TERM}},
{TOKEN_PLUS,           {NULL,     &Parser::binary, PREC_TERM}},
{TOKEN_SEMICOLON,      {NULL,     NULL,   PREC_NONE}},
{TOKEN_SLASH,          {NULL,     &Parser::binary, PREC_FACTOR}},
{TOKEN_STAR,           {NULL,     &Parser::binary, PREC_FACTOR}},
{TOKEN_BANG,           {NULL,     NULL,   PREC_NONE}},
{TOKEN_BANG_EQUAL,     {NULL,     NULL,   PREC_NONE}},
{TOKEN_EQUAL,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_EQUAL_EQUAL,    {NULL,     NULL,   PREC_NONE}},
{TOKEN_GREATER,        {NULL,     NULL,   PREC_NONE}},
{TOKEN_GREATER_EQUAL,  {NULL,     NULL,   PREC_NONE}},
{TOKEN_LESS,           {NULL,     NULL,   PREC_NONE}},
{TOKEN_LESS_EQUAL,     {NULL,     NULL,   PREC_NONE}},
{TOKEN_IDENTIFIER,     {NULL,     NULL,   PREC_NONE}},
{TOKEN_STRING,         {NULL,     NULL,   PREC_NONE}},
{TOKEN_NUMBER,         {&Parser::number,   NULL,   PREC_NONE}},
{TOKEN_AND,            {NULL,     NULL,   PREC_NONE}},
{TOKEN_CLASS,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_ELSE,           {NULL,     NULL,   PREC_NONE}},
{TOKEN_FALSE,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_FOR,            {NULL,     NULL,   PREC_NONE}},
{TOKEN_FUN,            {NULL,     NULL,   PREC_NONE}},
{TOKEN_IF,             {NULL,     NULL,   PREC_NONE}},
{TOKEN_NIL,            {NULL,     NULL,   PREC_NONE}},
{TOKEN_OR,             {NULL,     NULL,   PREC_NONE}},
{TOKEN_PRINT,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_RETURN,         {NULL,     NULL,   PREC_NONE}},
{TOKEN_SUPER,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_THIS,           {NULL,     NULL,   PREC_NONE}},
{TOKEN_TRUE,           {NULL,     NULL,   PREC_NONE}},
{TOKEN_VAR,            {NULL,     NULL,   PREC_NONE}},
{TOKEN_WHILE,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_ERROR,          {NULL,     NULL,   PREC_NONE}},
{TOKEN_EOF,            {NULL,     NULL,   PREC_NONE}},
    };
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

void Parser::advance()
{
    previous = current;
    while (true)
    {
        current = scanner.scanToken();
        if (current.type != TOKEN_ERROR)
            break;

        errorAtCurrent();
    }
}
void Parser::consume(TokenType type)
{
    if (current.type == type)
    {
        advance();
        return;
    }
    errorAtCurrent();
}
void Parser::expression()
{
    parsePrecedence(PREC_ASSIGNMENT);
}
void Parser::parsePrecedence(Precedence precedence)
{
    advance();
    ParseFn prefixRule = getRule.at(previous.type).prefix;
    if (prefixRule == NULL)
    {
        error();
        return;
    }
    prefixRule(*this);
    while (precedence <= getRule.at(current.type).precedence)
    {
        advance();
        ParseFn infixRule = getRule.at(previous.type).infix;
        infixRule(*this);
    }
}
void Parser::number()
{
    Value value = std::stoi(std::string(previous.string));
    compilingChunk.emitConstant(value);
}
void Parser::binary()
{
    TokenType operatorType = previous.type;
    ParseRule rule = getRule.at(operatorType);
    parsePrecedence(static_cast<Precedence>(rule.precedence + 1));

    switch (operatorType)
    {
    case TOKEN_PLUS:
        compilingChunk.emitByte(OP_ADD);
        break;
    case TOKEN_MINUS:
        compilingChunk.emitByte(OP_SUB);
        break;
    case TOKEN_STAR:
        compilingChunk.emitByte(OP_MUL);
        break;
    case TOKEN_SLASH:
        compilingChunk.emitByte(OP_DIV);
        break;
    default:
        return; // Unreachable.
    }
}
void Parser::unary()
{
    TokenType operatorType = previous.type;
    expression();
    switch (operatorType)
    {
    case TOKEN_MINUS:
        compilingChunk.emitByte(OP_NEGATE);
        break;
    default:
        return; // Unreachable.
    }
}
void Parser::grouping()
{
    expression();
    consume(TOKEN_RIGHT_PAREN);
}