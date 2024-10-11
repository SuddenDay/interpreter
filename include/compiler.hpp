#pragma once
#include "util.hpp"
#include "common.hpp"
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
    Token name;
    int depth = -1;
    bool is_captured = false;
};

enum FunctionType
{
    TYPE_FUNCTION,
    TYPE_METHOD,
    TYPE_INITIALIZER,
    TYPE_SCRIPT
};

struct BorC{
    BorC(int offset, int is_break) : offset(offset), is_break(is_break) {}
    int offset;
    int is_break;
};

struct LoopCompiler {
    std::unique_ptr<LoopCompiler> outer = nullptr;
    std::vector<BorC> offsets;
};

struct ClassCompiler {
    std::unique_ptr<ClassCompiler> enclosing = nullptr;
	Token name;
	bool has_super_class = false;
};

struct Compiler
{
    std::unique_ptr<Compiler> enclosing = nullptr;
    ObjFunction *function = nullptr;
    FunctionType type;
    std::array<Upvalue, UINT8_MAX> upvalues;
    std::array<Local, UINT8_MAX> locals;
    int local_count = 0;
    int scope_depth = 0;
};

struct Complication
{
    Complication(VM &vm);
    ObjFunction *compile(const std::string_view &source);
    Chunk *current_chunk();

    auto end_compiler() -> std::pair<ObjFunction*, std::unique_ptr<Compiler>>;

    void synchronize();
    void advance();
    void consume(TokenType type, const std::string_view &message);
    void expression();
    void parse_precedence(Precedence precedence);
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
    void name_variable(const Token& name, bool canAssign);
    uint8_t parse_variable(const std::string_view &message);
    uint8_t identifier_constant(const Token& token);
    int emit_jump(Opcode instruction);
    void patch_jump(int offset);
    void patch_offset(int start, int end);
    bool check(TokenType type);
    bool match(TokenType type);
    void declaration();
    void define_variable(uint8_t global);
    void declare_variable();
    void class_declaration();
    void fun_declaration();
    void add_local(Token name);
    bool identifier_equal(const Token& a, const Token& b);
    void mark_initialize();
    void init_compiler(FunctionType type);
    int resolve_upvalue(const std::unique_ptr<Compiler> &compiler, const Token &name);
    int resolve_local(const std::unique_ptr<Compiler> &compiler, const Token& name);
    int add_upvalue(const std::unique_ptr<Compiler> &compiler, int index,
                   bool is_local);

    void begin_scope()
    {
        current->scope_depth++;
    }

    void end_scope()
    {
        current->scope_depth--;
        while (current->local_count > 0 &&
               current->locals[current->local_count - 1].depth >
                   current->scope_depth)
        {
            if(current->locals[current->local_count - 1].is_captured)
                emit_byte(OP_CLOSE_UPVALUE);
            else
                emit_byte(OP_POP);
            current->local_count--;
        }
    }

    Token syntehtic_token(const std::string_view text);

    void write_chunk(uint8_t op, int line);
    uint8_t add_constant(const Value& value);
    void emit_constant(const Value& value);
    void emit_bytes(uint8_t byte1, uint8_t byte2);
    void emit_return();
    void emit_byte(uint8_t byte);
    uint8_t make_constant(Value value);

    std::unique_ptr<ClassCompiler> current_class = nullptr;
    std::unique_ptr<Compiler> current;
    std::unique_ptr<Parser> parser;
    VM &vm;

    std::unordered_set<ObjString*> global_table; 
    std::unordered_map<TokenType, const Parser::ParseRule> get_rule;
    std::unique_ptr<LoopCompiler> current_loop = nullptr;
};
