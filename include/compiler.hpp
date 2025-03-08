#pragma once
#include "util.hpp"
#include "parser.hpp"
#include "scanner.hpp"
#include "memory.hpp"
#include <array>
#include <unordered_set>
#include "object.hpp"

struct ObjString;
struct VM;
struct Local
{
    Token name_;
    int depth_ = -1;
    bool is_captured_ = false;
};

enum FunctionType
{
    TYPE_FUNCTION,
    TYPE_METHOD,
    TYPE_INITIALIZER,
    TYPE_SCRIPT
};

struct BreakAndContinue
{
    BreakAndContinue(int offset, int is_break) : offset_(offset), is_break_(is_break) {}
    int offset_;
    int is_break_;
};

struct LoopCompiler
{
    std::unique_ptr<LoopCompiler> outer_ = nullptr;
    std::vector<BreakAndContinue> offsets_;
};

struct ClassCompiler
{
    std::unique_ptr<ClassCompiler> enclosing_ = nullptr;
    Token name_;
    bool has_super_class_ = false;
};

struct Compiler
{
    std::unique_ptr<Compiler> enclosing_ = nullptr;
    ObjFunction *function_ = nullptr;
    FunctionType type_;
    std::array<Upvalue, UINT8_MAX> upvalues_;
    std::array<Local, UINT8_MAX> locals_;
    int local_count_ = 0;
    int scope_depth_ = 0;
};

struct Complication
{
    Complication(VM &vm);
    ObjFunction *compile(const std::string_view &source);
    Chunk *current_chunk();

    auto end_compiler() -> std::pair<ObjFunction *, std::unique_ptr<Compiler>>;

    void advance();
    void consume(TokenType type, const std::string_view &message);
    void expression();
    void parse_precedence(Precedence precedence);
    void yield();
    void resume();
    void coroutine(bool canAssign);
    void number(bool canAssign);
    void binary(bool canAssign);
    void unary(bool canAssign);
    void and_(bool canAssign);
    void or_(bool canAssign);
    void this_(bool assign);
    void super_(bool assign);
    void grouping(bool canAssign);
    void list(bool canAssign);
    void json(bool canAssign);
    void get_or_set(bool canAssign);
    uint8_t argument_list();
    void call(bool canAssign);
    void literal(bool canAssign);
    void string(bool canAssign);
    void variable(bool canAssign);
    void dot(bool canAssign);
    void function_expr(bool assign);
    void statement();
    void block();
    void while_statement();
    void for_statement();
    void emit_loop(int loopStart);
    void return_statement();
    void print_statement();
    void if_statement();
    void expression_statement();
    void var_declaration();
    void function(FunctionType type);
    void method();
    void name_variable(const Token &name, bool canAssign);
    uint8_t parse_variable(const std::string_view &message);
    uint8_t identifier_constant(const Token &token);
    int emit_jump(Opcode instruction);
    void patch_jump(int offset);
    void patch_offset(int start, int end);
    bool check(TokenType type);
    bool match(TokenType type);
    void declaration();
    void define_global(uint8_t global);
    void declare_local();
    void class_declaration();
    void fun_declaration();
    void add_local(Token name);
    bool identifier_equal(const Token &a, const Token &b);
    void mark_initialize();
    void init_compiler(FunctionType type);
    int resolve_upvalue(const std::unique_ptr<Compiler> &compiler, const Token &name);
    int resolve_local(const std::unique_ptr<Compiler> &compiler, const Token &name);
    int add_upvalue(const std::unique_ptr<Compiler> &compiler, int index,
                    bool is_local);

    void begin_scope()
    {
        current_->scope_depth_++;
    }

    void end_scope();


    Token syntehtic_token(const std::string_view text);

    void write_chunk(uint8_t op, int line);
    uint8_t add_constant(const Value &value);
    void emit_constant(const Value &value);
    void emit_bytes(uint8_t byte1, uint8_t byte2);
    void emit_return();
    void emit_byte(uint8_t byte);
    uint8_t make_constant(Value value);

    std::unique_ptr<ClassCompiler> current_class_ = nullptr;
    std::unique_ptr<Compiler> current_;
    std::unique_ptr<Parser> parser_;
    VM &vm_;

    std::unordered_set<ObjString *> global_table_;
    std::unordered_map<TokenType, const Parser::ParseRule> get_rule_;
    std::unique_ptr<LoopCompiler> current_loop_ = nullptr;
};
