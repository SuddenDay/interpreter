#pragma once
#include <unordered_map>
#include "value.hpp"

struct ObjString;

template<typename T>
struct Allocator;

using table = std::unordered_map<ObjString*, Value, std::less<ObjString*>, Allocator<std::pair<ObjString* const, Value>>>;