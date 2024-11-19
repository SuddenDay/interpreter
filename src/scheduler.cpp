#include "scheduler.hpp"
#include "common.hpp"
#include "vm.hpp"

void Scheduler::addObjCoroutine(ObjCoroutine *coroutine)
{
    coroutines_.push_back(coroutine);
}

InterpretResult Scheduler::runNextObjCoroutine()
{
    ObjCoroutine *front = nullptr;
    while (!coroutines_.empty())
    {
        front = coroutines_.front();
        coroutines_.pop_front();
        if (front->status_ != CoroutineStatus::FINISHED)
            break;
    }
    return resumeCoroutine(front);
}

void Scheduler::yieldCurrentObjCoroutine()
{
    if (current_coroutine_->status_ == CoroutineStatus::FINISHED)
    {
        ;
    }
    else
    {
        current_coroutine_->status_ = CoroutineStatus::SUSPENDED;
        addObjCoroutine(current_coroutine_);
    }
}

InterpretResult Scheduler::resumeCoroutine(ObjCoroutine *coroutine)
{
    if (coroutine->status_ == CoroutineStatus::SUSPENDED)
    {
        current_coroutine_ = coroutine;
        current_coroutine_->status_ = CoroutineStatus::RUNNING;
        for (auto it = coroutines_.begin(); it != coroutines_.end(); it++)
            if (*it == coroutine)
            {
                coroutines_.erase(it);
                break;
            }
        return vm.run(coroutine); // Resume coroutine execution
    }
    else
        return INTERPRET_RUNTIME_ERROR;
}