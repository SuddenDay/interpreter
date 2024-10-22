#pragma once
#include <cstdint>
#include <vector>
#include <ostream>

#define DEBUG_MODE
// #define STRESS_TEST 
enum InterpretResult
{
    INTERPRET_OK,
    INTERPRET_COMPILE_ERROR,
    INTERPRET_RUNTIME_ERROR,
};

