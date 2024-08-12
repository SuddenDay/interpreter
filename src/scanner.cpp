#include "scanner.hpp"
#include <string>
#include <cctype>

namespace clox {
    static const std::string_view error_message = "Unexpected character";
    token scanner::scanToken()
    {
        skipSpace();
        start = current;

        if(isAtEnd()) return makeToken(TOKEN_EOF);
        char ch = advance();
        if(std::isdigit(ch)) return number();
        if(std::isalpha(ch)) return identifier();

        switch (ch) {
            case '(': return makeToken(TOKEN_LEFT_PAREN);
            case ')': return makeToken(TOKEN_RIGHT_PAREN);
            case '{': return makeToken(TOKEN_LEFT_BRACE);
            case '}': return makeToken(TOKEN_RIGHT_BRACE);
            case ';': return makeToken(TOKEN_SEMICOLON);
            case ',': return makeToken(TOKEN_COMMA);
            case '.': return makeToken(TOKEN_DOT);
            case '-': return makeToken(TOKEN_MINUS);
            case '+': return makeToken(TOKEN_PLUS);
            case '/': return makeToken(TOKEN_SLASH);
            case '*': return makeToken(TOKEN_STAR);
            case '!':
                return makeToken(match('=') ? TOKEN_BANG_EQUAL : TOKEN_BANG);
            case '=':
                return makeToken(match('=') ? TOKEN_EQUAL_EQUAL : TOKEN_EQUAL);
            case '<':
                return makeToken(match('=') ? TOKEN_LESS_EQUAL : TOKEN_LESS);
            case '>':
                return makeToken(match('=') ? TOKEN_GREATER_EQUAL : TOKEN_GREATER);
            case '"': 
                return this->string();
        }
        return token{TOKEN_ERROR, error_message, line};
    }
    char scanner::peek()
    {
        return *current; 
    }
    char scanner::advance()
    {
        char ch = *current; 
        current++; 
        return ch;  
    }
    void scanner::skipSpace()
    {
        for (;;) { 
            char c = peek(); 
            switch (c) { 
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
                if (peekNext() == '/') {
                    while (peek() != '\n' && !isAtEnd()) advance();
                } else {
                    return;
                }
                break;
            default: 
                return; 
           } 
        } 
    }
    bool scanner::match(char wana)
    {
        if(isAtEnd()) return false;
        if (*current != wana) return false;
        current++;
        return true;
    }
    bool scanner::isAtEnd()
    {
        return current == source.end() || *current == '\0';
    }
    token scanner::makeToken(TokenType type)
    {
        return token{type, std::string_view(start, std::distance(start, current)), line};
    }
    char scanner::peekNext() {
        if (isAtEnd()) return '\0';
        return *(current + 1);
    }
    token scanner::number()
    {
        while (std::isdigit(peek())) advance();

        if (peek() == '.' && std::isdigit(peekNext())) advance();

        while (std::isdigit(peek())) advance();
        return makeToken(TOKEN_NUMBER);
    }
    token scanner::string()
    {
        while (peek() != '"' && !isAtEnd()) {
          if (peek() == '\n') line++;
          advance();
        }
        if (isAtEnd()) 
            return token{TOKEN_ERROR, error_message, line};
        advance();
        return makeToken(TOKEN_STRING);
    }
    token scanner::identifier()
    {
        while (std::isalpha(peek()) || std::isdigit(peek())) advance();
        return makeToken(identifierType());
    }
    TokenType scanner::identifierType()
    {
        auto str = std::string_view(start, std::distance(start, current));
        return checkKeyword.find(str) != checkKeyword.end() \
            ? checkKeyword.at(str)
            : TOKEN_IDENTIFIER;
    }
}