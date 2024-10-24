#pragma once
#include "object.hpp"
#include "memory.hpp"
#include <deque>
class VM;
struct Scheduler {
    VM& vm;
    Scheduler(VM& vm) : vm(vm) {}
    std::deque<ObjCoroutine*> coroutines;  // Queue of coroutines
    ObjCoroutine* current_coroutine = nullptr;  // The coroutine currently running

    void addObjCoroutine(ObjCoroutine* coroutine);
    InterpretResult runNextObjCoroutine();
    void yieldCurrentObjCoroutine();
    InterpretResult resumeCoroutine(ObjCoroutine* coroutine);
};
