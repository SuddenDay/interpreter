#include "compiler.hpp"
#include "tokentype.hpp"
#include "objstring.hpp"
#include "object.hpp"
#include "obj.hpp"
#include "memory.hpp"
#include "vm.hpp"
#include <string_view>

Complication::Complication(VM &vm) : current(nullptr), parser(nullptr), vm(vm), get_rule({
                                                                                    {TOKEN_LEFT_BRACKET, {&Complication::list, &Complication::get_or_set, PREC_CALL}},
                                                                                    {TOKEN_RIGHT_BRACKET, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_LEFT_PAREN, {&Complication::grouping, &Complication::call, PREC_CALL}},
                                                                                    {TOKEN_RIGHT_PAREN, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_LEFT_BRACE, {&Complication::json, nullptr, PREC_NONE}},
                                                                                    {TOKEN_RIGHT_BRACE, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_COMMA, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_DOT, {nullptr, &Complication::dot, PREC_CALL}},
                                                                                    {TOKEN_MINUS, {&Complication::unary, &Complication::binary, PREC_TERM}},
                                                                                    {TOKEN_ADD_EQUAL, {nullptr, nullptr, PREC_ASSIGNMENT}},
                                                                                    {TOKEN_MINUS_EQUAL, {nullptr, nullptr, PREC_ASSIGNMENT}},
                                                                                    {TOKEN_PLUS, {nullptr, &Complication::binary, PREC_TERM}},
                                                                                    {TOKEN_SEMICOLON, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_SLASH, {nullptr, &Complication::binary, PREC_FACTOR}},
                                                                                    {TOKEN_STAR, {nullptr, &Complication::binary, PREC_FACTOR}},
                                                                                    {TOKEN_BANG, {&Complication::unary, nullptr, PREC_NONE}},
                                                                                    {TOKEN_BANG_EQUAL, {nullptr, &Complication::binary, PREC_EQUALITY}},
                                                                                    {TOKEN_EQUAL, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_EQUAL_EQUAL, {nullptr, &Complication::binary, PREC_EQUALITY}},
                                                                                    {TOKEN_GREATER, {nullptr, &Complication::binary, PREC_COMPARISON}},
                                                                                    {TOKEN_GREATER_EQUAL, {nullptr, &Complication::binary, PREC_COMPARISON}},
                                                                                    {TOKEN_LESS, {nullptr, &Complication::binary, PREC_COMPARISON}},
                                                                                    {TOKEN_LESS_EQUAL, {nullptr, &Complication::binary, PREC_COMPARISON}},
                                                                                    {TOKEN_IDENTIFIER, {&Complication::variable, nullptr, PREC_NONE}},
                                                                                    {TOKEN_STRING, {&Complication::string, nullptr, PREC_NONE}},
                                                                                    {TOKEN_NUMBER, {&Complication::number, nullptr, PREC_NONE}},
                                                                                    {TOKEN_AND, {nullptr, &Complication::and_, PREC_AND}},
                                                                                    {TOKEN_CLASS, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_ELSE, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_FALSE, {&Complication::literal, nullptr, PREC_NONE}},
                                                                                    {TOKEN_FOR, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_FUN, {&Complication::function_expr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_IF, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_NIL, {&Complication::literal, nullptr, PREC_NONE}},
                                                                                    {TOKEN_OR, {nullptr, &Complication::or_, PREC_OR}},
                                                                                    {TOKEN_PRINT, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_RETURN, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_SUPER, {&Complication::super_, nullptr, PREC_NONE}},
                                                                                    {TOKEN_THIS, {&Complication::this_, nullptr, PREC_NONE}},
                                                                                    {TOKEN_TRUE, {&Complication::literal, nullptr, PREC_NONE}},
                                                                                    {TOKEN_VAR, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_WHILE, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_ERROR, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_EOF, {nullptr, nullptr, PREC_NONE}},
                                                                                    {TOKEN_COLON, {nullptr, nullptr, PREC_NONE}},
                                                                                })
{
}

ObjFunction *Complication::compile(const std::string_view &source)
{
    parser = std::make_unique<Parser>(source);
    init_compiler(TYPE_SCRIPT);
    advance();
    while (!match(TOKEN_EOF))
        declaration();
    consume(TOKEN_EOF, "Expect EOF in the end.");
    auto [function, done] = end_compiler();
    return parser->has_error ? nullptr : function;
}

Chunk *Complication::current_chunk()
{
    return &current->function->chunk;
}

auto Complication::end_compiler() -> std::pair<ObjFunction *, std::unique_ptr<Compiler>>
{
    emit_return();
    ObjFunction *function = current->function;
#ifdef DEBUG_MODE
    if (!parser->has_error)
    {
        std::cout << "=== ";
        if (function->name != nullptr)
            std::cout << *function->name << "===\n";
        else
            std::cout << "<script>" << " ===\n";
    }
#endif
    std::unique_ptr<Compiler> done = std::move(current);
    current = std::move(done->enclosing);
    return {function, std::move(done)};
}

void Complication::synchronize()
{
    parser->panic_mode = false;

    while (parser->current.type != TOKEN_EOF)
    {
        if (parser->previous.type == TOKEN_SEMICOLON)
            return;
        switch (parser->current.type)
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

void Complication::advance()
{
    parser->prev_previous = parser->previous;
    parser->previous = parser->current;
    while (true)
    {
        parser->current = parser->scanner.scan_token();
        if (parser->current.type != TOKEN_ERROR)
            break;

        parser->error_at_current("Get error token.");
    }
}
void Complication::consume(TokenType type, const std::string_view &message)
{
    if (parser->current.type == type)
    {
        advance();
        return;
    }
    parser->error_at_current(message);
}
void Complication::expression()
{
    parse_precedence(PREC_ASSIGNMENT);
}
void Complication::parse_precedence(Precedence precedence)
{
    advance();
    auto name = get_rule.at(parser->previous.type);
    auto prefixRule = name.prefix;
    if (prefixRule == nullptr)
    {
        parser->error("No suitable prefixRule for " + std::string(parser->previous.string));
        return;
    }
    bool canAssign = precedence <= PREC_ASSIGNMENT;
    prefixRule(*this, canAssign);
    while (precedence <= get_rule.at(parser->current.type).precedence)
    {
        advance();
        auto infixRule = get_rule.at(parser->previous.type).infix;
        infixRule(*this, canAssign);
    }
    if (canAssign && match(TOKEN_EQUAL)) // to detect a * b = c * d gramma error
        parser->error("Can't be assigned.");
}
void Complication::number(bool canAssign)
{
    Value value = std::stoi(std::string(parser->previous.string));
    emit_constant(value);
}
void Complication::binary(bool canAssign)
{
    TokenType operatorType = parser->previous.type;
    auto rule = get_rule.at(operatorType);
    parse_precedence(static_cast<Precedence>(rule.precedence + 1));

    switch (operatorType)
    {
    case TOKEN_BANG_EQUAL:
        emit_bytes(OP_EQUAL, OP_NOT);
        break;
    case TOKEN_EQUAL_EQUAL:
        emit_byte(OP_EQUAL);
        break;
    case TOKEN_GREATER:
        emit_byte(OP_GREATER);
        break;
    case TOKEN_GREATER_EQUAL:
        emit_bytes(OP_LESS, OP_NOT);
        break;
    case TOKEN_LESS:
        emit_byte(OP_LESS);
        break;
    case TOKEN_LESS_EQUAL:
        emit_bytes(OP_GREATER, OP_NOT);
        break;
    case TOKEN_PLUS:
        emit_byte(OP_ADD);
        break;
    case TOKEN_MINUS:
        emit_byte(OP_SUB);
        break;
    case TOKEN_STAR:
        emit_byte(OP_MUL);
        break;
    case TOKEN_SLASH:
        emit_byte(OP_DIV);
        break;
    default:
        return; // Unreachable.
    }
}

void Complication::unary(bool canAssign)
{
    TokenType operatorType = parser->previous.type;
    expression();
    switch (operatorType)
    {
    case TOKEN_BANG:
        emit_byte(OP_NOT);
        break;
    case TOKEN_MINUS:
        emit_byte(OP_NEGATE);
        break;
    default:
        return; // Unreachable.
    }
}
void Complication::and_(bool canAssign)
{
    int endJump = emit_jump(OP_JUMP_IF_FALSE);

    emit_byte(OP_POP);
    parse_precedence(PREC_AND);

    patch_jump(endJump);
}
void Complication::or_(bool canAssign)
{
    int elseJump = emit_jump(OP_JUMP_IF_FALSE);
    int endJump = emit_jump(OP_JUMP);

    patch_jump(elseJump);
    emit_byte(OP_POP);

    parse_precedence(PREC_OR);
    patch_jump(endJump);
}
void Complication::grouping(bool canAssign)
{
    expression();
    consume(TOKEN_RIGHT_PAREN, "No right paren.");
}

void Complication::list(bool canAssign)
{
    // [value-1, value-2, value-3]
    int count = 0;
    if (!check(TOKEN_RIGHT_BRACKET))
    {
        do
        {
            count++;
            expression();
        } while (match(TOKEN_COMMA));
    }
    emit_bytes(OP_ARRAY, count);
    consume(TOKEN_RIGHT_BRACKET, "Expect ']' to end array or list.");
}

void Complication::json(bool canAssign)
{
    int count = 0;
    if (!check(TOKEN_RIGHT_BRACE))
    {
        do
        {
            count++;
            expression();
            consume(TOKEN_COLON, "Expect ':' to set json value.");
            expression();
        } while (match(TOKEN_COMMA));
    }
    emit_bytes(OP_JSON, count);
    consume(TOKEN_RIGHT_BRACE, "Expect '}' to end json.");
}

void Complication::get_or_set(bool canAssign)
{
    expression();
    consume(TOKEN_RIGHT_BRACKET, "Expect ']' to get list element.");
    if (match(TOKEN_EQUAL))
    {
        expression();
        emit_byte(OP_SET_ELEMENT);
    } else if(match(TOKEN_ADD_EQUAL)) 
    {
        emit_bytes(OP_PEEK, 1);
        emit_bytes(OP_PEEK, 1);
        emit_byte(OP_GET_ELEMENT);
        expression();
        emit_byte(OP_ADD);
        emit_byte(OP_SET_ELEMENT);
    }
    else if(match(TOKEN_MINUS_EQUAL))
    {
        emit_bytes(OP_PEEK, 1);
        emit_bytes(OP_PEEK, 1);
        emit_byte(OP_GET_ELEMENT);
        expression();
        emit_byte(OP_SUB);
        emit_byte(OP_SET_ELEMENT);
    }
    else
        emit_byte(OP_GET_ELEMENT);
}

uint8_t Complication::argument_list()
{
    uint8_t argCount = 0;
    if (!check(TOKEN_RIGHT_PAREN))
    {
        do
        {
            expression();
            argCount++;
        } while (match(TOKEN_COMMA));
    }
    consume(TOKEN_RIGHT_PAREN, "Expect ')' after arguments.");
    return argCount;
}

void Complication::super_(bool assign)
{
    if (current_class == NULL)
        parser->error("Can't use 'super' outside of a class.");
    else if (!current_class->has_super_class)
        parser->error("Can't use 'super' in a class with no superclass.");

    consume(TOKEN_DOT, "Expect '.' after 'super'.");
    consume(TOKEN_IDENTIFIER, "Expect superclass method name.");
    uint8_t name = identifier_constant(parser->previous);
    name_variable(syntehtic_token("this"), false);
    if (match(TOKEN_LEFT_PAREN))
    {
        uint8_t argCount = argument_list();
        name_variable(syntehtic_token("super"), false);
        emit_bytes(OP_SUPER_INVOKE, name);
        emit_byte(argCount);
    }
    else
    {
        name_variable(syntehtic_token("super"), false);
        emit_bytes(OP_GET_SUPER, name);
    }
}

void Complication::call(bool canAssign)
{
    uint8_t argCount = argument_list();
    emit_bytes(OP_CALL, argCount);
}

void Complication::literal(bool canAssign)
{
    switch (parser->previous.type)
    {
    case TOKEN_FALSE:
        emit_byte(OP_FALSE);
        break;
    case TOKEN_NIL:
        emit_byte(OP_NIL);
        break;
    case TOKEN_TRUE:
        emit_byte(OP_TRUE);
        break;
    default:
        return; // Unreachable.
    }
}

void Complication::string(bool canAssign)
{
    std::string_view text = parser->previous.string;
    std::string_view str = text.substr(1, text.size() - 2);
    auto obj = create_obj_string(str, vm);
    emit_constant(obj);
}

void Complication::variable(bool canAssign)
{
    name_variable(parser->previous, canAssign);
}

void Complication::statement()
{
    if (match(TOKEN_RETURN))
    {
        return_statement();
    }
    else if (match(TOKEN_PRINT))
    {
        print_statement();
    }
    else if (match(TOKEN_IF))
    {
        if_statement();
    }
    else if (match(TOKEN_WHILE))
    {
        while_statement();
    }
    else if (match(TOKEN_FOR))
    {
        for_statement();
    }
    else if (match(TOKEN_LEFT_BRACE))
    {
        begin_scope();
        block();
        end_scope();
    }
    else if (match(TOKEN_CONTINUE))
    {
        if (current_loop == nullptr)
            parser->error_at_current("continue should inside for or while");
        consume(TOKEN_SEMICOLON, "after continue need ;");
        emit_byte(OP_CONTINUE);
        current_loop->offsets.push_back({current_chunk()->bytecode.size(), 0});
        emit_bytes(0xff, 0xff);
    }
    else if (match(TOKEN_BREAK))
    {
        if (current_loop == nullptr)
            parser->error_at_current("break should inside for or while");
        consume(TOKEN_SEMICOLON, "after break need ;");
        emit_byte(OP_BREAK);
        current_loop->offsets.push_back({current_chunk()->bytecode.size(), 1});
        emit_bytes(0xff, 0xff);
    }
    else
    {
        expression_statement();
    }
}

void Complication::block()
{
    while (!check(TOKEN_RIGHT_BRACE) && !check(TOKEN_EOF))
        declaration();
    consume(TOKEN_RIGHT_BRACE, "block only have left right brace.");
}

void Complication::dot(bool canAssign)
{
    consume(TOKEN_IDENTIFIER, "Expect property arg after '.'.");
    uint8_t arg = identifier_constant(parser->previous);

    if (canAssign && match(TOKEN_EQUAL))
    {
        expression();
        emit_bytes(OP_SET_PROPERTY, arg);
    } else if(canAssign && match(TOKEN_ADD_EQUAL)) {
        emit_bytes(OP_PEEK, 0);
        emit_bytes(OP_GET_PROPERTY, arg);
        expression();
        emit_byte(OP_ADD);
        emit_bytes(OP_SET_PROPERTY, arg);
    } else if(canAssign && match(TOKEN_MINUS_EQUAL)) {
        emit_bytes(OP_PEEK, 0);
        emit_bytes(OP_GET_PROPERTY, arg);
        expression();
        emit_byte(OP_SUB);
        emit_bytes(OP_SET_PROPERTY, arg);
    } else if (match(TOKEN_LEFT_PAREN))
    {
        uint8_t argCount = argument_list();
        emit_bytes(OP_INVOKE, arg);
        emit_byte(argCount);
    }
    else
    {
        emit_bytes(OP_GET_PROPERTY, arg);
    }
}

void Complication::while_statement()
{
    auto classLoop = std::make_unique<LoopCompiler>();
    classLoop->outer = std::move(current_loop);
    current_loop = std::move(classLoop);

    int loopStart = current_chunk()->bytecode.size();
    consume(TOKEN_LEFT_PAREN, "Expect '(' after 'while'.");
    expression();
    consume(TOKEN_RIGHT_PAREN, "Expect ')' after condition.");

    int exitJump = emit_jump(OP_JUMP_IF_FALSE);
    emit_byte(OP_POP);
    statement();
    emit_loop(loopStart);
    patch_offset(loopStart, current_chunk()->bytecode.size());

    patch_jump(exitJump);
    emit_byte(OP_POP);
    current_loop = std::move(current_loop->outer);
}

void Complication::for_statement()
{
    begin_scope();

    auto classLoop = std::make_unique<LoopCompiler>();
    classLoop->outer = std::move(current_loop);
    current_loop = std::move(classLoop);

    consume(TOKEN_LEFT_PAREN, "Expect '(' after 'for'.");
    if (match(TOKEN_SEMICOLON))
    {
        // No initializer.
    }
    else if (match(TOKEN_VAR))
    {
        var_declaration();
    }
    else
    {
        expression_statement();
    }

    int loopStart = current_chunk()->bytecode.size();
    int exitJump = -1;
    if (!match(TOKEN_SEMICOLON))
    {
        expression();
        consume(TOKEN_SEMICOLON, "Expect ';' after loop condition.");

        // Jump out of the loop if the condition is false.
        exitJump = emit_jump(OP_JUMP_IF_FALSE);
        emit_byte(OP_POP); // Condition.
    }

    if (!match(TOKEN_RIGHT_PAREN))
    {
        int bodyJump = emit_jump(OP_JUMP);
        int incrementStart = current_chunk()->bytecode.size();
        expression();
        emit_byte(OP_POP);
        consume(TOKEN_RIGHT_PAREN, "Expect ')' after for clauses.");

        emit_loop(loopStart);
        loopStart = incrementStart;
        patch_jump(bodyJump);
    }

    statement();
    emit_loop(loopStart);
    patch_offset(loopStart, current_chunk()->bytecode.size());

    if (exitJump != -1)
    {
        patch_jump(exitJump);
        emit_byte(OP_POP); // Condition.
    }

    current_loop = std::move(current_loop->outer);
    end_scope();
}

void Complication::patch_offset(int loopStart, int loopEnd)
{
    for (const auto &[offset, _] : current_loop->offsets)
    {
        if (_ == 0)
        {
            current_chunk()->bytecode[offset] = (loopStart >> 8) & 0xff;
            current_chunk()->bytecode[offset + 1] = loopStart & 0xff;
        }
        else
        {
            current_chunk()->bytecode[offset] = (loopEnd >> 8) & 0xff;
            current_chunk()->bytecode[offset + 1] = loopEnd & 0xff;
        }
    }
}

void Complication::emit_loop(int loopStart)
{
    emit_byte(OP_LOOP);

    int offset = current_chunk()->bytecode.size() - loopStart + 2;
    if (offset > UINT16_MAX)
        parser->error("Loop body too large.");

    emit_byte((offset >> 8) & 0xff);
    emit_byte(offset & 0xff);
}

void Complication::return_statement()
{
    if (current->type == TYPE_SCRIPT)
        parser->error("Can't return from top-level code.");

    if (match(TOKEN_SEMICOLON))
        emit_return();
    else
    {
        if (current->type == TYPE_INITIALIZER)
            parser->error("Can't return a value from an initializer.");

        expression();
        consume(TOKEN_SEMICOLON, "Expect ';' after return value.");
        emit_byte(OP_RETURN);
    }
}

void Complication::print_statement()
{
    expression();
    consume(TOKEN_SEMICOLON, "At the end of statement required ;.");
    emit_byte(OP_PRINT);
}

void Complication::if_statement()
{
    consume(TOKEN_LEFT_PAREN, "Expect '(' after 'if'.");
    expression(); // Parse condition
    consume(TOKEN_RIGHT_PAREN, "Expect ')' after if condition.");

    // Compile the 'then' branch
    int then_jump = emit_jump(OP_JUMP_IF_FALSE);
    emit_byte(OP_POP); // Pop the condition
    statement();

    // Handle multiple 'elif'
    std::vector<int> patchs;
    while (match(TOKEN_ELIF))
    {
        int elif_jump = emit_jump(OP_JUMP); // if(true) jump out of if-elif-else
        patchs.push_back(elif_jump);
        patch_jump(then_jump); // if(false) jump next if-elif-else
        emit_byte(OP_POP);     // Pop the last 'if' condition

        consume(TOKEN_LEFT_PAREN, "Expect '(' after 'elif'.");
        expression(); // Parse elif condition
        consume(TOKEN_RIGHT_PAREN, "Expect ')' after elif condition.");

        then_jump = emit_jump(OP_JUMP_IF_FALSE);
        emit_byte(OP_POP); // Pop elif condition
        statement();

        patch_jump(then_jump);
    }
    int else_jump = emit_jump(OP_JUMP);
    // Optional else
    patch_jump(then_jump);
    if (match(TOKEN_ELSE))
    {
        emit_byte(OP_POP); // Pop the last condition
        statement();
        patch_jump(else_jump);
    }
    for (auto &patch : patchs)
        patch_jump(patch);
}

void Complication::expression_statement()
{
    expression();
    consume(TOKEN_SEMICOLON, "expression_statement needs ;.");
    emit_byte(OP_POP);
}

void Complication::var_declaration()
{
    uint8_t global = parse_variable("Expect variable declare.");
    if (match(TOKEN_EQUAL))
        expression();
    else
        emit_byte(OP_NIL);
    consume(TOKEN_SEMICOLON, "Variable declaration needs ;.");
    define_variable(global);
}

void Complication::name_variable(const Token& name, bool canAssign)
{
    Opcode getOp, setOp;
    int arg = resolve_local(current, name);
    if (arg != -1)
    {
        getOp = OP_GET_LOCAL;
        setOp = OP_SET_LOCAL;
    }
    else if ((arg = resolve_upvalue(current, name)) != -1)
    {
        getOp = OP_GET_UPVALUE;
        setOp = OP_SET_UPVALUE;
    }
    else
    {
        arg = identifier_constant(name);
        getOp = OP_GET_GLOBAL;
        setOp = OP_SET_GLOBAL;
    }

    if (canAssign && match(TOKEN_EQUAL))
    {
        expression();
        emit_bytes(setOp, arg);
    }
    else if (canAssign && match(TOKEN_ADD_EQUAL))
    {
        expression();
        emit_bytes(getOp, arg);
        emit_byte(OP_ADD);
        emit_bytes(setOp, arg);
    }
    else if (canAssign && match(TOKEN_MINUS_EQUAL))
    {
        emit_bytes(getOp, arg);
        expression();
        emit_byte(OP_SUB);
        emit_bytes(setOp, arg);
    }
    else
    {
        emit_bytes(getOp, arg);
    }
}

int Complication::resolve_local(const std::unique_ptr<Compiler> &compiler, const Token &name)
{
    for (int i = compiler->local_count - 1; i >= 0; i--)
    {
        Local &local = compiler->locals[i];
        if (identifier_equal(name, local.name))
        {
            if (local.depth == -1)
                parser->error("var variable = variable is not allowed."); // var a = 1; {
                                                                          //     var a = a;  // we first define a and search a but this is not initialized
                                                                          //                 // if we first expression not define can get a = 1 result
                                                                          // }
            return i;
        }
    }
    return -1;
}

void Complication::mark_initialize() // when define function and define local variable used
{
    if (current->scope_depth == 0)
        return;
    if (current->scope_depth > 0) // at start all depth is -1
        current->locals[current->local_count - 1].depth = current->scope_depth;
}

void Complication::init_compiler(FunctionType type)
{
    auto compiler = std::make_unique<Compiler>();
    compiler->enclosing = std::move(current);
    current = std::move(compiler);
    current->function = create_obj<ObjFunction>(vm.gc);
    current->type = type;

    if (type != FunctionType::TYPE_SCRIPT)
        current->function->name = create_obj_string(parser->previous.string, vm);
    Local &local = current->locals.at(current->local_count++); // for this pointer
    local.depth = 0;
    local.is_captured = false;
    if (type != TYPE_FUNCTION)
        local.name.string = "this"; // every method has a local slot for this pointer
    else
        local.name.string = std::string_view(); // never used for other type
}

int Complication::resolve_upvalue(const std::unique_ptr<Compiler> &compiler, const Token &name)
{
    if (compiler->enclosing == nullptr)
        return -1;
    int local = resolve_local(compiler->enclosing, name);
    if (local != -1)
    {
        compiler->enclosing->locals[local].is_captured = true;
        return add_upvalue(compiler, local, true);
    }

    int upvalue = resolve_upvalue(compiler->enclosing, name); // layer-by-layer
                                                              // to add upvalue
                                                              // and ensure concerned func
                                                              // all have upvalue
    if (upvalue != -1)
        return add_upvalue(compiler, upvalue, false); // capture upvalue

    return -1;
}

int Complication::add_upvalue(const std::unique_ptr<Compiler> &compiler, int index, bool is_local)
{
    int upvalue_count = compiler->function->upvalue_count; // outside function firstly add upvalue
                                                           // and the outest one have 0 upvalue_count
                                                           // because only after outside capture it,
                                                           // can inside get upvalue_count and upvalue information
    for (int i = 0; i < upvalue_count; i++)
    {
        Upvalue &upvalue = compiler->upvalues[i];
        if (upvalue.index == index && upvalue.is_local == is_local) // index is about captured local-var
            return i;                                               // is_local is outside function's local-var
    } // we shouldn't repeatedly add
    if (upvalue_count == UINT8_MAX)
    {
        parser->error("Too many closure variables in function.");
        return 0;
    }
    compiler->upvalues[upvalue_count].is_local = is_local;
    compiler->upvalues[upvalue_count].index = index;
    return compiler->function->upvalue_count++;
}

uint8_t Complication::parse_variable(const std::string_view &message)
{
    consume(TOKEN_IDENTIFIER, message);
    declare_variable();           // this function define local
    if (current->scope_depth > 0) // below is to define global variable
        return 0;
    return identifier_constant(parser->previous);
}

uint8_t Complication::identifier_constant(const Token &token)
{
    std::string_view str = token.string;
    auto name = create_obj_string(str, vm); // template deduce lead string_view decay to basic_string_view
    return make_constant(name);
}

int Complication::emit_jump(Opcode instruction)
{
    emit_byte(instruction);
    emit_bytes(0xff, 0xff);
    return current_chunk()->bytecode.size() - 2;
}

void Complication::patch_jump(int offset)
{
    int jump = current_chunk()->bytecode.size() - offset - 2;

    if (jump > UINT16_MAX)
        parser->error("Too much code to jump over.");

    current_chunk()->bytecode[offset] = (jump >> 8) & 0xff;
    current_chunk()->bytecode[offset + 1] = jump & 0xff;
}

bool Complication::check(TokenType type)
{
    return parser->current.type == type;
}

bool Complication::match(TokenType type)
{
    if (!check(type))
        return false;
    advance();
    return true;
}

void Complication::declaration()
{
    if (match(TOKEN_CLASS))
        class_declaration();
    else if (match(TOKEN_FUN))
        fun_declaration();
    else if (match(TOKEN_VAR))
        var_declaration();
    else
        statement();
}

void Complication::declare_variable() // only register local
{
    if (current->scope_depth == 0) {
        // global define use opcode::global_define in compile time can't check
        // so global can define multi-times
        return;
    }

    Token name = parser->previous;
    for (int i = current->local_count - 1; i >= 0; i--)
    {
        Local& local = current->locals[i];
        if (local.depth != -1 && local.depth < current->scope_depth) // current scope is no name-conflict
            break;
        if (identifier_equal(name, local.name))
            parser->error(std::string(name.string) + " has defined before.");
    }
    add_local(name);
}

void Complication::class_declaration()
{
    consume(TOKEN_IDENTIFIER, "Expect class name.");
    Token className = parser->previous;
    uint8_t nameConstant = identifier_constant(parser->previous);

    declare_variable();
    emit_bytes(OP_CLASS, nameConstant);
    define_variable(nameConstant);

    auto classCompiler = std::make_unique<ClassCompiler>();
    classCompiler->enclosing = std::move(current_class);
    current_class = std::move(classCompiler);

    if (match(TOKEN_LESS)) // inherit
    {
        consume(TOKEN_IDENTIFIER, "Expect superclass name.");
        name_variable(parser->previous, false); // OP_GET a class_obj from upvalue or local or global
                                                // we wana in vm-stack obj_father is in front of obj_son

        // B < A
        // className is B     previous is A
        if (className.string == parser->previous.string)
            parser->error("A class cannot inherit from itself.");

        begin_scope();
        add_local(syntehtic_token("super"));
        mark_initialize();

        name_variable(className, false);
        emit_byte(OP_INHERIT); // three opcode is for vm to create inherit realtion
        current_class->has_super_class = true;
    }

    name_variable(className, false); // generate get opcode

    consume(TOKEN_LEFT_BRACE, "Expect '{' before class body.");

    while (!check(TOKEN_RIGHT_BRACE) && !check(TOKEN_EOF))
        method();

    consume(TOKEN_RIGHT_BRACE, "Expect '}' after class body.");
    emit_byte(OP_POP);

    if (current_class->has_super_class)
        end_scope();
    current_class = std::move(current_class->enclosing);
}

void Complication::fun_declaration()
{
    uint8_t global = parse_variable("Expect function name."); // before closure all function is global
    mark_initialize();                                        // why initialize
    function(TYPE_FUNCTION);
    define_variable(global);
}

void Complication::function_expr(bool assign)
{
    function(FunctionType::TYPE_FUNCTION);
}

void Complication::function(FunctionType type)
{
    init_compiler(type);
    begin_scope();

    consume(TOKEN_LEFT_PAREN, "Expect '(' after function name.");
    if (!check(TOKEN_RIGHT_PAREN))
    {
        do
        {
            current->function->arity++;
            if (current->function->arity > 255)
                parser->error_at_current("Can't have more than 255 parameters.");
            uint8_t constant = parse_variable("Expect parameter name.");
            define_variable(constant);
        } while (match(TOKEN_COMMA));
    }
    consume(TOKEN_RIGHT_PAREN, "Expect ')' after parameters.");
    consume(TOKEN_LEFT_BRACE, "Expect '{' before function body.");
    block();

    auto [function, done] = end_compiler();
    // emit_bytes(OP_CONSTANT, make_constant(static_cast<Obj *>(function)));
    emit_bytes(OP_CLOSURE, make_constant(function));
    for (int i = 0; i < function->upvalue_count; i++)
    {
        emit_byte(done->upvalues[i].is_local ? 1 : 0);
        emit_byte(done->upvalues[i].index);
    }
}

void Complication::method()
{
    consume(TOKEN_IDENTIFIER, "Expect method name.");
    uint8_t constant = identifier_constant(parser->previous);
    FunctionType type = TYPE_METHOD;
    if (parser->previous.string == "init")
        type = TYPE_INITIALIZER;
    function(type);
    emit_bytes(OP_METHOD, constant);
}

void Complication::this_(bool assign)
{
    if (current_class == nullptr)
    {
        parser->error("Can't use 'this' outside of a class.");
        return;
    }
    variable(false);
}

void Complication::add_local(Token name)
{
    if (current->local_count == UINT8_MAX)
    {
        parser->error("Local variable count has reached limit.");
        return;
    }
    Local &local = current->locals[current->local_count++];
    local.name = name;
    local.depth = -1;
}

bool Complication::identifier_equal(const Token &a, const Token &b)
{
    return a.string == b.string;
}

void Complication::define_variable(uint8_t global) // only define global
{
    if (current->scope_depth > 0)
    {
        mark_initialize(); // begin all current local variable depth is -1
        return;            // local variable has been defined before
    }
    auto str = current_chunk()->constants[global].as_obj<ObjString>();
    if(global_table.find(str) != global_table.end())
        parser->error("Global variable has been defined before");
    global_table.insert(str);
    emit_bytes(OP_DEFINE_GLOBAL, global);
}

Token Complication::syntehtic_token(const std::string_view text)
{
    Token token;
    token.string = text;
    return token;
}

void Complication::write_chunk(uint8_t op, int line)
{
    current_chunk()->bytecode.push_back(op);
    current_chunk()->lines.push_back(line);
}

uint8_t Complication::add_constant(const Value& value)
{
    vm.push(value);
    current_chunk()->constants.push_back(value);
    vm.pop();
    return current_chunk()->constants.size() - 1;
}

void Complication::emit_constant(const Value& value)
{
    emit_bytes(OP_CONSTANT, make_constant(value));
}
void Complication::emit_bytes(uint8_t byte1, uint8_t byte2)
{
    emit_byte(byte1);
    emit_byte(byte2);
}
void Complication::emit_return()
{
    if (current->type == TYPE_INITIALIZER)
        emit_bytes(OP_GET_LOCAL, 0);
    else
        emit_byte(OP_NIL);
    emit_byte(Opcode::OP_RETURN);
}
void Complication::emit_byte(uint8_t byte)
{
    write_chunk(byte, parser->previous.line);
}

uint8_t Complication::make_constant(Value value)
{
    int constant = add_constant(value);
    if (constant > UINT8_MAX)
    {
        throw std::logic_error("Too many constants in one chunk.");
        return 0;
    }
    return (uint8_t)constant;
}
