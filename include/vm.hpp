#pragma once
#include "chunk.hpp"
#include <iostream>
#include <cstdarg>
#include "memory.hpp"
#include "value.hpp"
#include "table.hpp"
#include "compiler.hpp"
#include "object.hpp"
#include "scheduler.hpp"
#include "common.hpp"


struct GC;

class VM
{
public:
    VM(); 
    InterpretResult run(ObjCoroutine* co);

    template <typename Operator>
    bool binary_op(Operator op);
   
    void push(Value value);
    void reset_stack();
    Value pop();
    Value peek(int distance);
    void close_upvalues(Value* last);
    void define_method(ObjString* name);
    bool bind_method(ObjClass* klass, ObjString* name);

    bool call_value(const Value& callee, uint8_t arg_count);
    bool call(ObjClosure* closure, int argCount);
    bool invoke(ObjString* name, int argCount);
    bool invoke_from_class(ObjClass* klass, ObjString* name,
                            int argCount); 


    ObjUpvalue* capture_upvalue(Value* local);

	template<typename... Args>
	void runtime_error(Args&&... args);

    void define_native(std::string_view name, NativeFn function);

    InterpretResult interpret(const std::string& source);

    Complication cu_;
    ObjString* init_string_ = nullptr;
    ObjCoroutine* current_coroutine_ = nullptr;
    // std::vector<CallFrame> frames_;
    // int frame_count_ = 0;
    Table globals_;
    // int top_ = 0;
    ObjUpvalue* open_upvalues_ = nullptr;
    // std::vector<Value> stack_;
    GC gc_;
    Scheduler scheduler_;
    
};