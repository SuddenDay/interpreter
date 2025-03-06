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
	Json,
	Coroutine
};

struct Obj;
using ObjDeleter = std::function<void(Obj*)>;
struct Obj
{
	ObjType type_;
	bool is_marked_ = false;
	std::unique_ptr<Obj, ObjDeleter> next_ = nullptr;

	bool is_type(ObjType type) const
	{
		return this->type_ == type;
	}

	Obj(ObjType type) : type_(type) {}
	Obj() = default;
};

