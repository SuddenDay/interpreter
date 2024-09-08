#pragma once

#include "obj.hpp"
#include "memory.hpp"
#include "object.hpp"
#include "vm.hpp"

using clox_string = std::basic_string<char, std::char_traits<char>, Allocator<char>>;

struct ObjString : public Obj
{
    bool operator==(const ObjString& str) {
        return text() == str.text();
    }
    bool operator!=(const ObjString& str) {
        return text() != str.text();
    }
	clox_string content;

	explicit ObjString() : Obj(ObjType::String) {}
	std::string_view text()const { return content; }
};

std::ostream& operator<<(std::ostream& os, const ObjString& s);

clox_string operator+(const ObjString& lhs, const ObjString& rhs);
bool operator==(const ObjString& lhs, const ObjString& rhs);

template <typename T>
ObjString *create_obj_string(T &&str, VM &vm);

