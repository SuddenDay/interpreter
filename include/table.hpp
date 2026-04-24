#pragma once
#include <unordered_map>
#include "value.hpp"

struct ObjString;

template<typename T>
struct Allocator;

struct ObjStringPtrHash {
    size_t operator()(const ObjString* s) const noexcept;
};

struct ObjStringPtrEqual {
    bool operator()(const ObjString* a, const ObjString* b) const noexcept;
};

using Table = std::unordered_map<ObjString*, Value, ObjStringPtrHash, ObjStringPtrEqual,
      Allocator<std::pair<ObjString* const, Value>>>;
