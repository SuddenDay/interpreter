#include "compiler.hpp"
#include "tokentype.hpp"
#include "objstring.hpp"
#include "object.hpp"
#include "obj.hpp"
#include "memory.hpp"
#include "vm.hpp"
#include <string_view>

Complication::Complication(VM &vm) : current_(nullptr), parser_(nullptr), vm_(vm), get_rule_({
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
                                                                                       {TOKEN_COROUTINE, {&Complication::coroutine, nullptr, PREC_NONE}},
                                                                                       {TOKEN_YIELD, {nullptr, nullptr, PREC_NONE}},
                                                                                       {TOKEN_RESUME, {nullptr, nullptr, PREC_NONE}},
                                                                                   })
{
}

ObjFunction *Complication::compile(const std::string_view &source)
{
    parser_ = std::make_unique<Parser>(source);
    init_compiler(TYPE_SCRIPT);
    advance();
    while (!match(TOKEN_EOF))
        declaration();
    consume(TOKEN_EOF, "Expect EOF in the end.");
    auto [function, done] = end_compiler();
    return parser_->has_error_ ? nullptr : function;
}

Chunk *Complication::current_chunk()
{
    return &current_->function_->chunk_;
}

auto Complication::end_compiler() -> std::pair<ObjFunction *, std::unique_ptr<Compiler>>
{
    emit_return();
    ObjFunction *function = current_->function_;
#ifdef DEBUG_MODE
    if (!parser_->has_error_)
    {
        std::cout << "=== ";
        if (function->name_ != nullptr)
            std::cout << *function->name_ << "===\n";
        else
            std::cout << "<script>" << " ===\n";
    }
#endif
    std::unique_ptr<Compiler> done = std::move(current_);
    current_ = std::move(done->enclosing_);
    return {function, std::move(done)};
}

void Complication::advance()
{
    parser_->previous_ = parser_->current_;
    while (true)
    {
        parser_->current_ = parser_->scanner_.scan_token();
        if (parser_->current_.type != TOKEN_ERROR)
            break;

        parser_->error_at_current("Get error token.");
    }
}

void Complication::consume(TokenType type, const std::string_view &message)
{
    if (parser_->current_.type == type)
    {
        advance();
        return;
    }
    parser_->error_at_current(message);
}

void Complication::expression()
{
    parse_precedence(PREC_ASSIGNMENT);
}

void Complication::parse_precedence(Precedence precedence)
{
    advance();
    auto name = get_rule_.at(parser_->previous_.type);
    auto prefixRule = name.prefix_;
    if (prefixRule == nullptr)
    {
        parser_->error("No suitable prefixRule for " + std::string(parser_->previous_.string));
        return;
    }
    bool canAssign = precedence <= PREC_ASSIGNMENT;
    prefixRule(*this, canAssign);
    while (precedence <= get_rule_.at(parser_->current_.type).precedence_)
    {
        advance();
        auto infixRule = get_rule_.at(parser_->previous_.type).infix_;
        infixRule(*this, canAssign);
    }
    if (canAssign && match(TOKEN_EQUAL)) // to detect a * b = c * d gramma error
        parser_->error("Can't be assigned.");
}

void Complication::resume()
{
    consume(TOKEN_IDENTIFIER, "after resume need identifier");
    variable(false);
    consume(TOKEN_SEMICOLON, "need ; in the end of resume");
    emit_byte(OP_RESUME_COROUTINE);
}

void Complication::yield()
{
    if (this->current_->enclosing_ == nullptr)
        parser_->error("yield should be in function");
    consume(TOKEN_SEMICOLON, "need ; after yield");
    emit_byte(OP_YIELD_COROUTINE);
}

void Complication::coroutine(bool canAssign)
{
    int count = 0;
    if (match(TOKEN_IDENTIFIER))
        variable(false);
    else if (match(TOKEN_FUN))
        function_expr(false);
    else
        parser_->error("Need function or function variable!");
    if (match(TOKEN_LEFT_PAREN))
        count = argument_list();
    else
        parser_->error("Need argument for coroutine!");

    // fun () {} or function_name_variable
    // verify in vm
    // first generater closure
    emit_byte(OP_CREATE_COROUTINE); // then use it
    emit_byte(count);
}

void Complication::number(bool canAssign)
{
    Value value = std::stoi(std::string(parser_->previous_.string));
    emit_constant(value);
}
void Complication::binary(bool canAssign)
{
    TokenType operatorType = parser_->previous_.type;
    auto rule = get_rule_.at(operatorType);
    parse_precedence(static_cast<Precedence>(rule.precedence_ + 1));

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
    TokenType operatorType = parser_->previous_.type;
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
    }
    else if (match(TOKEN_ADD_EQUAL))
    {
        emit_bytes(OP_PEEK, 1);
        emit_bytes(OP_PEEK, 1);
        emit_byte(OP_GET_ELEMENT);
        expression();
        emit_byte(OP_ADD);
        emit_byte(OP_SET_ELEMENT);
    }
    else if (match(TOKEN_MINUS_EQUAL))
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
    if (current_class_ == NULL)
        parser_->error("Can't use 'super' outside of a class.");
    else if (!current_class_->has_super_class_)
        parser_->error("Can't use 'super' in a class with no superclass.");

    consume(TOKEN_DOT, "Expect '.' after 'super'.");
    consume(TOKEN_IDENTIFIER, "Expect superclass method name.");
    uint8_t name = identifier_constant(parser_->previous_);
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
    switch (parser_->previous_.type)
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
    std::string_view text = parser_->previous_.string;
    std::string_view str = text.substr(1, text.size() - 2);
    auto obj = create_obj_string(str, vm_);
    emit_constant(obj);
}

void Complication::variable(bool canAssign)
{
    name_variable(parser_->previous_, canAssign);
}

void Complication::statement()
{
    if (match(TOKEN_RESUME))
        resume();
    else if (match(TOKEN_YIELD))
        yield();
    else if (match(TOKEN_RETURN))
        return_statement();
    else if (match(TOKEN_PRINT))
        print_statement();
    else if (match(TOKEN_IF))
        if_statement();
    else if (match(TOKEN_WHILE))
        while_statement();
    else if (match(TOKEN_FOR))
        for_statement();
    else if (match(TOKEN_LEFT_BRACE))
    {
        begin_scope();
        block();
        end_scope();
    }
    else if (match(TOKEN_CONTINUE))
    {
        if (current_loop_ == nullptr)
            parser_->error_at_current("continue should inside for or while");
        consume(TOKEN_SEMICOLON, "after continue need ;");
        emit_byte(OP_CONTINUE);
        current_loop_->offsets_.push_back({current_chunk()->bytecode_.size(), 0});
        emit_bytes(0xff, 0xff); // jump to the first instruction before next loop
    }
    else if (match(TOKEN_BREAK))
    {
        if (current_loop_ == nullptr)
            parser_->error_at_current("break should inside for or while");
        consume(TOKEN_SEMICOLON, "after break need ;");
        emit_byte(OP_BREAK);
        current_loop_->offsets_.push_back({current_chunk()->bytecode_.size(), 1});
        emit_bytes(0xff, 0xff); // jump out current loop
    }
    else
        expression_statement();
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
    uint8_t arg = identifier_constant(parser_->previous_);

    if (canAssign && match(TOKEN_EQUAL))
    {
        expression();
        emit_bytes(OP_SET_PROPERTY, arg);
    }
    else if (canAssign && match(TOKEN_ADD_EQUAL))
    {
        emit_bytes(OP_PEEK, 0);
        emit_bytes(OP_GET_PROPERTY, arg);
        expression();
        emit_byte(OP_ADD);
        emit_bytes(OP_SET_PROPERTY, arg);
    }
    else if (canAssign && match(TOKEN_MINUS_EQUAL))
    {
        emit_bytes(OP_PEEK, 0);
        emit_bytes(OP_GET_PROPERTY, arg);
        expression();
        emit_byte(OP_SUB);
        emit_bytes(OP_SET_PROPERTY, arg);
    }
    else if (match(TOKEN_LEFT_PAREN))
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
    classLoop->outer_ = std::move(current_loop_);
    current_loop_ = std::move(classLoop);

    int loopStart = current_chunk()->bytecode_.size();
    consume(TOKEN_LEFT_PAREN, "Expect '(' after 'while'.");
    expression();
    consume(TOKEN_RIGHT_PAREN, "Expect ')' after condition.");

    int exitJump = emit_jump(OP_JUMP_IF_FALSE);
    emit_byte(OP_POP);
    statement();
    emit_loop(loopStart);
    patch_offset(loopStart, current_chunk()->bytecode_.size());

    patch_jump(exitJump);
    emit_byte(OP_POP);
    current_loop_ = std::move(current_loop_->outer_);
}

void Complication::for_statement()
{
    begin_scope();

    auto classLoop = std::make_unique<LoopCompiler>();
    classLoop->outer_ = std::move(current_loop_);
    current_loop_ = std::move(classLoop);

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

    int loopStart = current_chunk()->bytecode_.size();
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
        int incrementStart = current_chunk()->bytecode_.size();
        expression();
        emit_byte(OP_POP);
        consume(TOKEN_RIGHT_PAREN, "Expect ')' after for clauses.");

        emit_loop(loopStart);
        loopStart = incrementStart;
        patch_jump(bodyJump);
    }

    statement();
    emit_loop(loopStart);
    patch_offset(loopStart, current_chunk()->bytecode_.size());

    if (exitJump != -1)
    {
        patch_jump(exitJump);
        emit_byte(OP_POP); // Condition.
    }

    current_loop_ = std::move(current_loop_->outer_);
    end_scope();
}

void Complication::patch_offset(int loopStart, int loopEnd)
{
    for (const auto &[offset, _] : current_loop_->offsets_)
    {
        if (_ == 0)
        {
            current_chunk()->bytecode_[offset] = (loopStart >> 8) & 0xff;
            current_chunk()->bytecode_[offset + 1] = loopStart & 0xff;
        }
        else
        {
            current_chunk()->bytecode_[offset] = (loopEnd >> 8) & 0xff;
            current_chunk()->bytecode_[offset + 1] = loopEnd & 0xff;
        }
    }
}

void Complication::emit_loop(int loopStart)
{
    emit_byte(OP_LOOP);

    int offset = current_chunk()->bytecode_.size() - loopStart + 2;
    if (offset > UINT16_MAX)
        parser_->error("Loop body too large.");

    emit_byte((offset >> 8) & 0xff);
    emit_byte(offset & 0xff);
}

void Complication::return_statement()
{
    if (current_->type_ == TYPE_SCRIPT)
        parser_->error("Can't return from top-level code.");

    if (match(TOKEN_SEMICOLON))
        emit_return();
    else
    {
        if (current_->type_ == TYPE_INITIALIZER)
            parser_->error("Can't return a value from an initializer.");

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

void Complication::name_variable(const Token &name, bool canAssign)
{
    Opcode getOp, setOp;
    int arg = resolve_local(current_, name);
    if (arg != -1)
    {
        getOp = OP_GET_LOCAL;
        setOp = OP_SET_LOCAL;
    }
    else if ((arg = resolve_upvalue(current_, name)) != -1)
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
    for (int i = compiler->local_count_ - 1; i >= 0; i--)
    {
        Local &local = compiler->locals_[i];
        if (identifier_equal(name, local.name_))
        {
            if (local.depth_ == -1)
                parser_->error("var variable = variable is not allowed."); // var a = 1; {
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
    if (current_->scope_depth_ == 0)
        return;
    if (current_->scope_depth_ > 0) // at start all depth is -1
        current_->locals_[current_->local_count_ - 1].depth_ = current_->scope_depth_;
}

void Complication::init_compiler(FunctionType type)
{
    auto compiler = std::make_unique<Compiler>();
    compiler->enclosing_ = std::move(current_);
    current_ = std::move(compiler);
    current_->function_ = create_obj<ObjFunction>(vm_.gc_);
    current_->type_ = type;

    if (type != FunctionType::TYPE_SCRIPT)
        current_->function_->name_ = create_obj_string(parser_->previous_.string, vm_);
    Local &local = current_->locals_.at(current_->local_count_++); // for this pointer
    local.depth_ = 0;
    local.is_captured_ = false;
    if (type != TYPE_FUNCTION)
        local.name_.string = "this"; // every method has a local slot for this pointer
    else
        local.name_.string = std::string_view(); // never used for other type
}

int Complication::resolve_upvalue(const std::unique_ptr<Compiler> &compiler, const Token &name)
{
    if (compiler->enclosing_ == nullptr)
        return -1;
    int local = resolve_local(compiler->enclosing_, name);
    if (local != -1)
    {
        compiler->enclosing_->locals_[local].is_captured_ = true; // this is the latest outside function's local var
        return add_upvalue(compiler, local, true);
    }

    int upvalue = resolve_upvalue(compiler->enclosing_, name); // layer-by-layer
                                                               // to add upvalue
                                                               // and ensure concerned func
                                                               // all have upvalue
    if (upvalue != -1)
        return add_upvalue(compiler, upvalue, false); // capture upvalue

    return -1;
}

int Complication::add_upvalue(const std::unique_ptr<Compiler> &compiler, int index, bool is_local)
{
    int upvalue_count = compiler->function_->upvalue_count_; // outside function firstly add upvalue
                                                             // and the outest one have 0 upvalue_count
                                                             // because only after outside capture it,
                                                             // can inside get upvalue_count and upvalue information
    for (int i = 0; i < upvalue_count; i++)
    {
        Upvalue &upvalue = compiler->upvalues_[i];
        if (upvalue.index_ == index && upvalue.is_local_ == is_local) // index is about captured local-var
            return i;                                                 // is_local is outside function's local-var
    } // we shouldn't repeatedly add
    if (upvalue_count == UINT8_MAX)
    {
        parser_->error("Too many closure variables in function.");
        return 0;
    }
    compiler->upvalues_[upvalue_count].is_local_ = is_local;
    compiler->upvalues_[upvalue_count].index_ = index;
    // if is_local true, index is local_index for latest outside function's var
    // else, index be like below's upvalues_ index, meaning index for latestoutside function's upvalue
    // but all layer function add this var into upvalue
    return compiler->function_->upvalue_count_++;
}

uint8_t Complication::parse_variable(const std::string_view &message)
{
    consume(TOKEN_IDENTIFIER, message);
    declare_variable();             // this function define local
    if (current_->scope_depth_ > 0) // below is to define global variable
        return 0;
    return identifier_constant(parser_->previous_);
}

uint8_t Complication::identifier_constant(const Token &token)
{
    std::string_view str = token.string;
    auto name = create_obj_string(str, vm_); // template deduce lead string_view decay to basic_string_view
    return make_constant(name);
}

int Complication::emit_jump(Opcode instruction)
{
    emit_byte(instruction);
    emit_bytes(0xff, 0xff);
    return current_chunk()->bytecode_.size() - 2;
}

void Complication::patch_jump(int offset)
{
    int jump = current_chunk()->bytecode_.size() - offset - 2;

    if (jump > UINT16_MAX)
        parser_->error("Too much code to jump over.");

    current_chunk()->bytecode_[offset] = (jump >> 8) & 0xff;
    current_chunk()->bytecode_[offset + 1] = jump & 0xff;
}

bool Complication::check(TokenType type)
{
    return parser_->current_.type == type;
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
    if (current_->scope_depth_ == 0)
    {
        // global define use opcode::global_define in compile time can't check
        // so global can define multi-times
        return;
    }

    Token name = parser_->previous_;
    for (int i = current_->local_count_ - 1; i >= 0; i--)
    {
        Local &local = current_->locals_[i];
        if (local.depth_ != -1 && local.depth_ < current_->scope_depth_) // current scope is no name-conflict
            break;
        if (identifier_equal(name, local.name_))
            parser_->error(std::string(name.string) + " has defined before.");
    }
    add_local(name);
}

void Complication::class_declaration()
{
    consume(TOKEN_IDENTIFIER, "Expect class name.");
    Token className = parser_->previous_;
    uint8_t nameConstant = identifier_constant(parser_->previous_);

    declare_variable();
    emit_bytes(OP_CLASS, nameConstant); // when execute this will push objclass
    define_variable(nameConstant);

    auto classCompiler = std::make_unique<ClassCompiler>();
    classCompiler->enclosing_ = std::move(current_class_);
    current_class_ = std::move(classCompiler);

    if (match(TOKEN_LESS)) // inherit
    {
        consume(TOKEN_IDENTIFIER, "Expect superclass name.");
        name_variable(parser_->previous_, false); // OP_GET a class_obj from upvalue or local or global
                                                  // we wana in vm-stack obj_father is in front of obj_son
                                                  // this get son
        // B < A
        // className is B     previous is A
        if (className.string == parser_->previous_.string)
            parser_->error("A class cannot inherit from itself.");

        begin_scope();
        add_local(syntehtic_token("super"));
        mark_initialize();

        name_variable(className, false); // get father push objclass
        emit_byte(OP_INHERIT);           // three opcode is for vm to create inherit realtion
        current_class_->has_super_class_ = true;
    }

    name_variable(className, false); // generate get opcode

    consume(TOKEN_LEFT_BRACE, "Expect '{' before class body.");

    while (!check(TOKEN_RIGHT_BRACE) && !check(TOKEN_EOF))
        method();

    consume(TOKEN_RIGHT_BRACE, "Expect '}' after class body.");
    emit_byte(OP_POP);

    if (current_class_->has_super_class_)
        end_scope();
    current_class_ = std::move(current_class_->enclosing_);
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
            current_->function_->arity_++;
            if (current_->function_->arity_ > 255)
                parser_->error_at_current("Can't have more than 255 parameters.");
            uint8_t constant = parse_variable("Expect parameter name.");
            define_variable(constant);
        } while (match(TOKEN_COMMA));
    }
    consume(TOKEN_RIGHT_PAREN, "Expect ')' after parameters.");
    consume(TOKEN_LEFT_BRACE, "Expect '{' before function body.");
    block();

    auto [function, done] = end_compiler();

    emit_bytes(OP_CLOSURE, make_constant(function));
    for (int i = 0; i < function->upvalue_count_; i++)
    {
        emit_byte(done->upvalues_[i].is_local_ ? 1 : 0);
        emit_byte(done->upvalues_[i].index_);
    }
}

void Complication::method()
{
    consume(TOKEN_IDENTIFIER, "Expect method name.");
    uint8_t constant = identifier_constant(parser_->previous_);
    FunctionType type = TYPE_METHOD;
    if (parser_->previous_.string == "init")
        type = TYPE_INITIALIZER;
    function(type);
    emit_bytes(OP_METHOD, constant);
}

void Complication::this_(bool assign)
{
    if (current_class_ == nullptr)
    {
        parser_->error("Can't use 'this' outside of a class.");
        return;
    }
    variable(false);
}

void Complication::add_local(Token name)
{
    if (current_->local_count_ == UINT8_MAX)
    {
        parser_->error("Local variable count has reached limit.");
        return;
    }
    Local &local = current_->locals_[current_->local_count_++];
    local.name_ = name;
    local.depth_ = -1;
}

bool Complication::identifier_equal(const Token &a, const Token &b)
{
    return a.string == b.string;
}

void Complication::define_variable(uint8_t global) // only define global
{
    if (current_->scope_depth_ > 0)
    {
        mark_initialize(); // begin all current local variable depth is -1
        return;            // local variable has been defined before
    }
    auto str = current_chunk()->constants_[global].as_obj<ObjString>();
    if (global_table_.find(str) != global_table_.end()) // don't expect redefintion
        parser_->error("Global variable has been defined before");
    global_table_.insert(str);
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
    current_chunk()->bytecode_.push_back(op);
    current_chunk()->lines_.push_back(line);
}

uint8_t Complication::add_constant(const Value &value)
{
    current_chunk()->constants_.push_back(value); // we dont expect gc in compiler part
    return current_chunk()->constants_.size() - 1;
}

void Complication::emit_constant(const Value &value)
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
    if (current_->type_ == TYPE_INITIALIZER)
        emit_bytes(OP_GET_LOCAL, 0);
    else
        emit_byte(OP_NIL);
    emit_byte(Opcode::OP_RETURN);
}
void Complication::emit_byte(uint8_t byte)
{
    write_chunk(byte, parser_->previous_.line);
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
