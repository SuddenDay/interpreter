#pragma once
#include "value.hpp"
#include <chrono>

class Native {
    public:
    static Value clock(int argCount, Value* args) {
        auto tp = std::chrono::high_resolution_clock::now().time_since_epoch();
	    return static_cast<int>(std::chrono::duration<double>(tp).count());
    }
    static Value push(int argCount, Value* args) {
        args[0].as_obj<ObjArray>()->values_.push_back(args[1]);
        return Value();
    }
    static Value pop(int argCount, Value* args) {
        auto array = args[0].as_obj<ObjArray>();
        auto ret = array->values_.back();
        array->values_.pop_back();
        return ret;
    }
    static Value erase(int argCount, Value* args) {
        auto value = args[0].as_obj<ObjArray>();
        auto index = args[1].as<int>();
        auto& array = value->values_;
        auto ret = array.at(index);
        array.erase(index + array.begin());
        return ret;
    }
    static Value insert(int argCount, Value* args) {
        auto& array = args[0].as_obj<ObjArray>()->values_;
        auto index = args[1].as<int>();
        auto value = args[2];
        array.insert(index + array.begin(), value);
        return Value();
    }
};