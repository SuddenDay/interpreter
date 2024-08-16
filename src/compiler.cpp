#include "compiler.hpp"
#include "tokentype.hpp"
#include "objstring.hpp"
#include "obj.hpp"
#include "memory.hpp"
#include "vm.hpp"

Compiler::Compiler(const std::string &str, VM &vm) : scanner(str), compilingChunk(vm.chunk), parser(), vm(vm), getRule({
                                                                                                                   {TOKEN_LEFT_PAREN, {&Compiler::grouping, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_RIGHT_PAREN, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_LEFT_BRACE, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_RIGHT_BRACE, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_COMMA, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_DOT, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_MINUS, {&Compiler::unary, &Compiler::binary, PREC_TERM}},
                                                                                                                   {TOKEN_PLUS, {NULL, &Compiler::binary, PREC_TERM}},
                                                                                                                   {TOKEN_SEMICOLON, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_SLASH, {NULL, &Compiler::binary, PREC_FACTOR}},
                                                                                                                   {TOKEN_STAR, {NULL, &Compiler::binary, PREC_FACTOR}},
                                                                                                                   {TOKEN_BANG, {&Compiler::unary, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_BANG_EQUAL, {NULL, &Compiler::binary, PREC_EQUALITY}},
                                                                                                                   {TOKEN_EQUAL, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_EQUAL_EQUAL, {NULL, &Compiler::binary, PREC_EQUALITY}},
                                                                                                                   {TOKEN_GREATER, {NULL, &Compiler::binary, PREC_COMPARISON}},
                                                                                                                   {TOKEN_GREATER_EQUAL, {NULL, &Compiler::binary, PREC_COMPARISON}},
                                                                                                                   {TOKEN_LESS, {NULL, &Compiler::binary, PREC_COMPARISON}},
                                                                                                                   {TOKEN_LESS_EQUAL, {NULL, &Compiler::binary, PREC_COMPARISON}},
                                                                                                                   {TOKEN_IDENTIFIER, {&Compiler::variable, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_STRING, {&Compiler::string, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_NUMBER, {&Compiler::number, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_AND, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_CLASS, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_ELSE, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_FALSE, {&Compiler::literal, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_FOR, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_FUN, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_IF, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_NIL, {&Compiler::literal, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_OR, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_PRINT, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_RETURN, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_SUPER, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_THIS, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_TRUE, {&Compiler::literal, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_VAR, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_WHILE, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_ERROR, {NULL, NULL, PREC_NONE}},
                                                                                                                   {TOKEN_EOF, {NULL, NULL, PREC_NONE}},
                                                                                                               })
{
}

bool Compiler::compile()
{
    // int line = -1;
    // while (true) {
    //     Token token = scanner.scanToken();
    //     if (token.line != line) {
    //         std::cout << std::setw(4) << token.line << " ";
    //         line = token.line;
    //     } else {
    //         std::cout << "   | ";
    //     }
    // // Print the token type and the token string
    //     std::cout << std::setw(2) << token.type << " '"
    //           << token.string << "'" << std::endl;
    //     if (token.type == TOKEN_EOF)
    //         return true;
    // }

    advance();
    // expression();
    while (!match(TOKEN_EOF))
        declaration();
    consume(TOKEN_EOF);
    endCompiler();
    return !parser.hadError;
}

void Compiler::synchronize()
{
    parser.panicMode = false;

    while (parser.current.type != TOKEN_EOF)
    {
        if (parser.previous.type == TOKEN_SEMICOLON)
            return;
        switch (parser.current.type)
        {
        case TOKEN_CLASS:
        case TOKEN_FUN:
        case TOKEN_VAR:
        case TOKEN_FOR:
        case TOKEN_IF:
        case TOKEN_WHILE:
        case TOKEN_PRINT:
        case TOKEN_RETURN:
            return;

        default:; // Do nothing.
        }

        advance();
    }
}

void Compiler::advance()
{
    parser.previous = parser.current;
    while (true)
    {
        parser.current = scanner.scanToken();
        if (parser.current.type != TOKEN_ERROR)
            break;

        parser.errorAtCurrent();
    }
}
void Compiler::consume(TokenType type)
{
    if (parser.current.type == type)
    {
        advance();
        return;
    }
    parser.errorAtCurrent();
}
void Compiler::expression()
{
    parsePrecedence(PREC_ASSIGNMENT);
}
void Compiler::parsePrecedence(Precedence precedence)
{
    advance();
    auto name = getRule.at(parser.previous.type);
    Parser::ParseFn prefixRule = name.prefix;
    if (prefixRule == NULL)
    {
        parser.error();
        return;
    }
    bool canAssign = precedence <= PREC_ASSIGNMENT;
    prefixRule(*this, canAssign);
    while (precedence <= getRule.at(parser.current.type).precedence)
    {
        advance();
        Parser::ParseFn infixRule = getRule.at(parser.previous.type).infix;
        infixRule(*this, canAssign);
    }
    if (canAssign && match(TOKEN_EQUAL))
        parser.error();
}
void Compiler::number(bool canAssign)
{
    Value value = std::stoi(std::string(parser.previous.string));
    emitConstant(value);
}
void Compiler::binary(bool canAssign)
{
    TokenType operatorType = parser.previous.type;
    Parser::ParseRule rule = getRule.at(operatorType);
    parsePrecedence(static_cast<Precedence>(rule.precedence + 1));

    switch (operatorType)
    {
    case TOKEN_BANG_EQUAL:
        emitBytes(OP_EQUAL, OP_NOT);
        break;
    case TOKEN_EQUAL_EQUAL:
        emitByte(OP_EQUAL);
        break;
    case TOKEN_GREATER:
        emitByte(OP_GREATER);
        break;
    case TOKEN_GREATER_EQUAL:
        emitBytes(OP_LESS, OP_NOT);
        break;
    case TOKEN_LESS:
        emitByte(OP_LESS);
        break;
    case TOKEN_LESS_EQUAL:
        emitBytes(OP_GREATER, OP_NOT);
        break;
    case TOKEN_PLUS:
        emitByte(OP_ADD);
        break;
    case TOKEN_MINUS:
        emitByte(OP_SUB);
        break;
    case TOKEN_STAR:
        emitByte(OP_MUL);
        break;
    case TOKEN_SLASH:
        emitByte(OP_DIV);
        break;
    default:
        return; // Unreachable.
    }
}
void Compiler::unary(bool canAssign)
{
    TokenType operatorType = parser.previous.type;
    expression();
    switch (operatorType)
    {
    case TOKEN_BANG:
        emitByte(OP_NOT);
        break;
    case TOKEN_MINUS:
        emitByte(OP_NEGATE);
        break;
    default:
        return; // Unreachable.
    }
}
void Compiler::grouping(bool canAssign)
{
    expression();
    consume(TOKEN_RIGHT_PAREN);
}

void Compiler::literal(bool canAssign)
{
    switch (parser.previous.type)
    {
    case TOKEN_FALSE:
        emitByte(OP_FALSE);
        break;
    case TOKEN_NIL:
        emitByte(OP_NIL);
        break;
    case TOKEN_TRUE:
        emitByte(OP_TRUE);
        break;
    default:
        return; // Unreachable.
    }
}

void Compiler::string(bool canAssign)
{
    auto &text = parser.previous.string;
    auto str = text.substr(1, text.size() - 2);
    auto obj = create_obj_string(str, vm);
    emitConstant(obj);
}

void Compiler::variable(bool canAssign)
{
    namedVariable(parser.previous, canAssign);
}

void Compiler::statement()
{
    if (match(TOKEN_PRINT))
    {
        printStatement();
    }
    else
    {
        expressionStatement();
    }
}

void Compiler::printStatement()
{
    expression();
    consume(TOKEN_SEMICOLON);
    emitByte(OP_PRINT);
}

void Compiler::expressionStatement()
{
    expression();
    consume(TOKEN_SEMICOLON);
    emitByte(OP_POP);
}

void Compiler::varDeclaration()
{
    uint8_t global = parseVariable();
    if (match(TOKEN_EQUAL))
    {
        expression();
    }
    else
    {
        emitByte(OP_NIL);
    }
    consume(TOKEN_SEMICOLON);
    defineVariable(global);
}

void Compiler::namedVariable(Token name, bool canAssign)
{
    uint8_t arg = identifierConstant(name);
    if (match(TOKEN_EQUAL))
    {
        expression();
        emitBytes(OP_SET_GLOBAL, arg);
    }
    else
    {
        emitBytes(OP_GET_GLOBAL, arg);
    }
}

uint8_t Compiler::parseVariable()
{
    consume(TOKEN_IDENTIFIER);
    return identifierConstant(parser.previous);
}

uint8_t Compiler::identifierConstant(Token token)
{
    auto name = create_obj_string(token.string, vm);
    // vm.globals.insert({name, Value()});
    return makeConstant(name);
}

bool Compiler::check(TokenType type)
{
    return parser.current.type == type;
}

bool Compiler::match(TokenType type)
{
    if (!check(type))
        return false;
    advance();
    return true;
}

void Compiler::declaration()
{
    if (match(TOKEN_VAR))
    {
        varDeclaration();
    }
    else
    {
        statement();
    }
}

void Compiler::defineVariable(uint8_t global)
{
    emitBytes(OP_DEFINE_GLOBAL, global);
}

void Compiler::writeChunk(uint8_t op, int line)
{
    compilingChunk->bytecode.push_back(op);
    compilingChunk->lines.push_back(line);
}

uint8_t Compiler::addConstant(Value value)
{
    vm.push(value);
    compilingChunk->constants.push_back(value);
    vm.pop();
    return compilingChunk->constants.size() - 1;
}

void Compiler::emitConstant(Value value)
{
    emitBytes(OP_CONSTANT, makeConstant(value));
}
void Compiler::emitBytes(uint8_t byte1, uint8_t byte2)
{
    emitByte(byte1);
    emitByte(byte2);
}
void Compiler::emitReturn()
{
    emitByte(Opcode::OP_RETURN);
}
void Compiler::emitByte(uint8_t byte)
{
    writeChunk(byte, parser.previous.line); // TODO
}

uint8_t Compiler::makeConstant(Value value)
{
    int constant = addConstant(value);
    if (constant > UINT8_MAX)
    {
        throw std::logic_error("Too many constants in one chunk.");
        return 0;
    }
    return (uint8_t)constant;
}
