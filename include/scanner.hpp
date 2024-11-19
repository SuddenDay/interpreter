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
    Scanner(const std::string_view& str) : source_(str), check_keyword()
    {
        start = source_.cbegin();
        current = source_.cbegin();
        check_keyword.insert({"continue", TOKEN_CONTINUE});
        check_keyword.insert({"break", TOKEN_BREAK});
        check_keyword.insert({"and", TOKEN_AND});
        check_keyword.insert({"class", TOKEN_CLASS});
        check_keyword.insert({"else", TOKEN_ELSE});
        check_keyword.insert({"if", TOKEN_IF});
        check_keyword.insert({"nil", TOKEN_NIL});
        check_keyword.insert({"or", TOKEN_OR});
        check_keyword.insert({"print", TOKEN_PRINT});
        check_keyword.insert({"return", TOKEN_RETURN});
        check_keyword.insert({"super", TOKEN_SUPER});
        check_keyword.insert({"while", TOKEN_WHILE});
        check_keyword.insert({"false", TOKEN_FALSE});
        check_keyword.insert({"true", TOKEN_TRUE});
        check_keyword.insert({"fun", TOKEN_FUN});
        check_keyword.insert({"this", TOKEN_THIS});
        check_keyword.insert({"elif", TOKEN_ELIF});
        check_keyword.insert({"var", TOKEN_VAR});
        check_keyword.insert({"for", TOKEN_FOR});
        check_keyword.insert({"coroutine", TOKEN_COROUTINE});
        check_keyword.insert({"yield", TOKEN_YIELD});
        check_keyword.insert({"resume", TOKEN_RESUME});
    }
    Token scan_token();

public:
    char peek();
    char advance();
    void skip_space();
    bool match(char wana);
    bool is_at_end();
    char peek_next();
    Token number();
    Token string();
    Token identifier();
    TokenType identifier_type();
    Token make_token(TokenType type);
    std::string_view source_;
    std::string_view::const_iterator start;
    std::string_view::const_iterator current;
    std::unordered_map<std::string_view, TokenType> check_keyword;

    int line = 1;
};