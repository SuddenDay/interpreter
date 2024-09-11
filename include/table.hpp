#pragma once
#include <map>
#include "value.hpp"

struct ObjString;

template<typename T>
struct Allocator;

using Table = std::map<ObjString*, Value, std::less<ObjString*>, Allocator<std::pair<ObjString* const, Value>>>;