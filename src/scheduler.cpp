#include "scheduler.hpp"
#include "common.hpp"
#include "vm.hpp"

void Scheduler::addObjCoroutine(ObjCoroutine *coroutine)
{
    coroutines.push_back(coroutine);
}

InterpretResult Scheduler::runNextObjCoroutine()
{
    ObjCoroutine *front = nullptr;
    while (!coroutines.empty())
    {
        front = coroutines.front();
        coroutines.pop_front();
        if (front->status != CoroutineStatus::FINISHED)
            break;
    }
    return resumeCoroutine(front);
}

void Scheduler::yieldCurrentObjCoroutine()
{
    if (current_coroutine->status == CoroutineStatus::FINISHED)
    {
        ;
    }
    else
    {
        current_coroutine->status = CoroutineStatus::SUSPENDED;
        addObjCoroutine(current_coroutine);
    }
}

InterpretResult Scheduler::resumeCoroutine(ObjCoroutine *coroutine)
{
    if (coroutine->status == CoroutineStatus::SUSPENDED)
    {
        current_coroutine = coroutine;
        current_coroutine->status = CoroutineStatus::RUNNING;
        for (auto it = coroutines.begin(); it != coroutines.end(); it++)
            if (*it == coroutine)
            {
                coroutines.erase(it);
                break;
            }
        return vm.run(coroutine); // Resume coroutine execution
    }
    else
        return INTERPRET_RUNTIME_ERROR;
}