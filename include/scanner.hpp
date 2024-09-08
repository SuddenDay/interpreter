#pragma once
#include "tokentype.hpp"
#include <string_view>
#include <unordered_map>
struct Token
{
    TokenType type;
    std::string_view string;
    int line;
};
class Scanner
{
public:
    Scanner(const std::string_view& str) : source(str), checkKeyword()
    {
        start = source.cbegin();
        current = source.cbegin();
        checkKeyword.insert({"and", TOKEN_AND});
        checkKeyword.insert({"class", TOKEN_CLASS});
        checkKeyword.insert({"else", TOKEN_ELSE});
        checkKeyword.insert({"if", TOKEN_IF});
        checkKeyword.insert({"nil", TOKEN_NIL});
        checkKeyword.insert({"or", TOKEN_OR});
        checkKeyword.insert({"print", TOKEN_PRINT});
        checkKeyword.insert({"return", TOKEN_RETURN});
        checkKeyword.insert({"super", TOKEN_SUPER});
        checkKeyword.insert({"while", TOKEN_WHILE});
        checkKeyword.insert({"false", TOKEN_FALSE});
        checkKeyword.insert({"true", TOKEN_TRUE});
        checkKeyword.insert({"fun", TOKEN_FUN});
        checkKeyword.insert({"this", TOKEN_THIS});
        checkKeyword.insert({"var", TOKEN_VAR});
        checkKeyword.insert({"for", TOKEN_FOR});
    }
    Token scanToken();

public:
    char peek();
    char advance();
    void skipSpace();
    bool match(char wana);
    bool isAtEnd();
    char peekNext();
    Token number();
    Token string();
    Token identifier();
    TokenType identifierType();
    Token makeToken(TokenType type);
    std::string_view source;
    std::string_view::const_iterator start;
    std::string_view::const_iterator current;
    std::unordered_map<std::string_view, TokenType> checkKeyword;

    int line = 1;
};