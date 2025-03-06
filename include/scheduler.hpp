#pragma once
#include "object.hpp"
#include "memory.hpp"
#include "common.hpp"
#include <deque>
class VM;
struct Scheduler {
    VM& vm;
    Scheduler(VM& vm) : vm(vm) {}
    std::deque<ObjCoroutine*> coroutines_;  // Queue of coroutines
    ObjCoroutine* current_coroutine_ = nullptr;  // The coroutine currently running
    ObjCoroutine* main_coroutine = nullptr;  // The main coroutine

    void addObjCoroutine(ObjCoroutine* coroutine);
    InterpretResult runNextObjCoroutine();
    void yieldCurrentObjCoroutine();
    InterpretResult resumeCoroutine(ObjCoroutine* coroutine);
};
