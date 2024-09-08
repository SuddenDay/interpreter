#pragma once
#include "value.hpp"
#include <chrono>

class Native {
    public:
    static Value clock(int argCount, Value* args) {
        auto tp = std::chrono::high_resolution_clock::now().time_since_epoch();
	    return static_cast<int>(std::chrono::duration<double>(tp).count());
    }
};