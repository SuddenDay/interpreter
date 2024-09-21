#pragma once

#include <functional>
#include <memory>

enum class ObjType
{
	BoundMethod,
	Class,
	Closure,
	Function,
	Instance,
	Native,
	String,
	Upvalue,
	Array,
};

struct Obj;
using ObjDeleter = std::function<void(Obj*)>;
struct Obj
{
	ObjType type;
	bool is_marked = false;
	std::unique_ptr<Obj, ObjDeleter> next = nullptr;

	bool is_type(ObjType type) const
	{
		return this->type == type;
	}

//protected:
	Obj(ObjType type) : type(type) {}
};

