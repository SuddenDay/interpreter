#include "scanner.hpp"
#include <iostream>
#include <string>
#include <cctype>

static const std::string_view error_message = "Unexpected character";
Token Scanner::scan_token()
{
    skip_space();
    start = current;
    if (is_at_end())
        return make_token(TOKEN_EOF);
    char ch = advance();
    if (std::isdigit(ch))
        return number();
    if (std::isalpha(ch) || ch == '_')
        return identifier();

    switch (ch)
    {
    case ':':
        return make_token(TOKEN_COLON);
    case '[':
        return make_token(TOKEN_LEFT_BRACKET);
    case ']':
        return make_token(TOKEN_RIGHT_BRACKET);
    case '(':
        return make_token(TOKEN_LEFT_PAREN);
    case ')':
        return make_token(TOKEN_RIGHT_PAREN);
    case '{':
        return make_token(TOKEN_LEFT_BRACE);
    case '}':
        return make_token(TOKEN_RIGHT_BRACE);
    case ';':
        return make_token(TOKEN_SEMICOLON);
    case ',':
        return make_token(TOKEN_COMMA);
    case '.':
        return make_token(TOKEN_DOT);
    case '-':
        if(match('='))
            return make_token(TOKEN_MINUS_EQUAL);
        return make_token(TOKEN_MINUS);
    case '+':
        if(match('='))
            return make_token(TOKEN_ADD_EQUAL);
        return make_token(TOKEN_PLUS);
    case '/':
        return make_token(TOKEN_SLASH);
    case '*':
        return make_token(TOKEN_STAR);
    case '!':
        return make_token(match('=') ? TOKEN_BANG_EQUAL : TOKEN_BANG);
    case '=':
        return make_token(match('=') ? TOKEN_EQUAL_EQUAL : TOKEN_EQUAL);
    case '<':
        return make_token(match('=') ? TOKEN_LESS_EQUAL : TOKEN_LESS);
    case '>':
        return make_token(match('=') ? TOKEN_GREATER_EQUAL : TOKEN_GREATER);
    case '"':
        return this->string();
    }
    return Token{TOKEN_ERROR, error_message, line};
}
char Scanner::peek()
{
    return *current;
}
char Scanner::advance()
{
    char ch = *current;
    current++;
    return ch;
}
void Scanner::skip_space()
{
    for (;;)
    {
        char c = peek();
        switch (c)
        {
        case ' ':
        case '\r':
        case '\t':
            advance();
            break;
        case '\n':
            line++;
            advance();
            break;
        case '/':
            if (peek_next() == '/')
                while (peek() != '\n' && !is_at_end())
                    advance();
            else
                return;
            break;
        default:
            return;
        }
    }
}
bool Scanner::match(char wana)
{
    if (is_at_end())
        return false;
    if (*current != wana)
        return false;
    current++;
    return true;
}
bool Scanner::is_at_end()
{
    return current == source.end() || *current == '\0';
}
Token Scanner::make_token(TokenType type)
{
    return Token{type, std::string_view(start, std::distance(start, current)), line};
}
char Scanner::peek_next()
{
    if (is_at_end())
        return '\0';
    return *(current + 1);
}
Token Scanner::number()
{
    while (std::isdigit(peek()))
        advance();

    if (peek() == '.' && std::isdigit(peek_next()))
        advance();

    while (std::isdigit(peek()))
        advance();
    return make_token(TOKEN_NUMBER);
}
Token Scanner::string()
{
    while (peek() != '"' && !is_at_end())
    {
        if (peek() == '\n')
            line++;
        advance();
    }
    if (is_at_end())
        return Token{TOKEN_ERROR, error_message, line};
    advance();
    return make_token(TOKEN_STRING);
}
Token Scanner::identifier()
{
    while (std::isalpha(peek()) || std::isdigit(peek()) || peek() == '_')
        advance();
    return make_token(identifier_type());
}
TokenType Scanner::identifier_type()
{
    auto str = std::string_view(start, std::distance(start, current));
    return check_keyword.find(str) != check_keyword.end()
               ? check_keyword.at(str)
               : TOKEN_IDENTIFIER;
}