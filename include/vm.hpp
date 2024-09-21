#pragma once
#include "chunk.hpp"
#include <iostream>
#include <cstdarg>
#include "common.hpp"
#include "memory.hpp"
#include "value.hpp"
#include "table.hpp"
#include "compiler.hpp"
#include "object.hpp"

#define FRAMES_MAX 64
#define STACK_MAX (FRAMES_MAX * UINT8_MAX)
struct GC;
enum InterpretResult
{
    INTERPRET_OK,
    INTERPRET_COMPILE_ERROR,
    INTERPRET_RUNTIME_ERROR,
};
struct CallFrame {
    ObjClosure* closure = nullptr;
    uint8_t ip = 0;
    Value* slots = nullptr;

    uint8_t read_byte();
	Value read_constant();
	uint16_t read_short();
	ObjString* read_string();
};
class VM
{
public:
    VM(); 
    InterpretResult run();

    template <typename Operator>
    bool Binary_OP(Operator op);
   
    void push(Value value);
    void resetStack();
    Value pop();
    Value peek(int distance);
    void closeUpvalues(Value* last);
    void defineMethod(ObjString* name);
    bool bindMethod(ObjClass* klass, ObjString* name);

    bool callValue(const Value& callee, uint8_t arg_count);
    bool call(ObjClosure* closure, int argCount);
    bool invoke(ObjString* name, int argCount);
    bool invokeFromClass(ObjClass* klass, ObjString* name,
                            int argCount); 


    ObjUpvalue* captureUpvalue(Value* local);

	template<typename... Args>
	void runtimeError(Args&&... args);

    void defineNative(std::string_view name, NativeFn function);

    InterpretResult interpret(const std::string& source);

    Complication cu;
    ObjString* initString = nullptr;
    std::array<CallFrame, FRAMES_MAX> frames;
    int frameCount = 0;
    Table globals;
    int top = 0;
    ObjUpvalue* openUpvalues = nullptr;
    std::vector<Value> stack;
    GC gc;
};