#pragma once

#include <string_view>
#include "table.hpp"
#include "obj.hpp"
#include "chunk.hpp"
#include "common.hpp"
#include <functional>
#include <unordered_map>

struct ObjString;
struct ObjClosure;
struct GC;
struct Obj;

struct CallFrame {
    ObjClosure* closure_ = nullptr;
    uint8_t ip_ = 0;
    // Value* slots_ = nullptr;
    int slot_ = 0;

    uint8_t read_byte();
	Value read_constant();
	uint16_t read_short();
	ObjString* read_string();
};

void register_obj(std::unique_ptr<Obj, ObjDeleter> &&obj, GC &gc);

template <typename T>
auto delete_obj(Allocator<T> &alloc, T *ptr)
	-> typename std::enable_if_t<std::is_base_of_v<Obj, T>, void>
{
	using AllocTraits = std::allocator_traits<Allocator<T>>;
	AllocTraits::destroy(alloc, ptr);
	AllocTraits::deallocate(alloc, ptr, 1);
}

struct ObjFunction : public Obj
{
	int arity_ = 0;
	int upvalue_count_ = 0;
	Chunk chunk_;
	ObjString *name_ = nullptr;

	ObjFunction() : Obj(ObjType::Function) {}
};

std::ostream &operator<<(std::ostream &os, const ObjFunction &f);

using NativeFn = std::function<Value(int argCount, Value *args)>;

struct ObjNative : public Obj
{
	NativeFn function_;
	std::string_view name_;

	ObjNative(NativeFn func, std::string_view name)
		: Obj(ObjType::Native), function_(func), name_(name)
	{
	}
};
std::ostream &operator<<(std::ostream &os, const ObjNative &s);

struct Upvalue
{
	bool is_local_;
	int index_;
};

struct ObjUpvalue : public Obj
{
	Value *location_;
	Value closed_;
	ObjUpvalue *next_ = nullptr;

	ObjUpvalue(Value *slot)
		: Obj(ObjType::Upvalue), location_(slot), closed_(Value())
	{
	}
};
std::ostream &operator<<(std::ostream &os, const ObjUpvalue &s);

struct ObjClosure : public Obj
{
	ObjFunction *function_;
	std::vector<ObjUpvalue *, Allocator<ObjUpvalue *>> upvalues_;

	ObjClosure(ObjFunction *func) : Obj(ObjType::Closure), function_(func), upvalues_(func->upvalue_count_, nullptr) {}

	int upvalue_count() { return upvalues_.size(); }
};
std::ostream &operator<<(std::ostream &os, const ObjClosure &s);

struct ObjClass : public Obj
{
	ObjString *const name_;
	Table methods_;

	ObjClass(ObjString *name)
		: Obj(ObjType::Class), name_(name)
	{
	}
};
std::ostream &operator<<(std::ostream &os, const ObjClass &c);

struct ObjInstance : public Obj
{
	ObjClass *const objClass_;
	Table fields_;

	ObjInstance(ObjClass *objClass)
		: Obj(ObjType::Instance), objClass_(objClass)
	{
	}
};
std::ostream &operator<<(std::ostream &os, const ObjInstance &ins);

struct ObjArray : public Obj
{
	std::vector<Value, Allocator<Value>> values_;
	ObjArray(int size)
		: Obj(ObjType::Array), values_(size)
	{
	}
};
std::ostream &operator<<(std::ostream &os, const ObjArray &arr);

struct ObjJson : public Obj
{
	std::unordered_map<Value, Value, std::hash<Value>, std::equal_to<Value>, Allocator<std::pair<const Value, Value>>> kv_;
	ObjJson()
		: Obj(ObjType::Json)
	{
	}
};
std::ostream &operator<<(std::ostream &os, const ObjJson &json);

struct ObjBoundMethod : public Obj
{
	Value receiver_;
	ObjClosure *const method_;

	ObjBoundMethod(const Value& receiver, ObjClosure *method)
		: Obj(ObjType::BoundMethod), receiver_(receiver), method_(method)
	{
	}
};
std::ostream &operator<<(std::ostream &os, const ObjBoundMethod &bm);

enum class CoroutineStatus { RUNNING, SUSPENDED, FINISHED };

struct ObjCoroutine : public Obj
{
	ObjClosure* closure_;
	std::vector<Value> stack_;
	std::vector<CallFrame> frames_;
	
	int frame_count_;
	int top_;
	CoroutineStatus status_;
	std::vector<Value> arguments_;
	bool is_main_ = false;
	ObjCoroutine(ObjClosure *closure, const std::vector<Value>& arguments = {});

};

std::ostream &operator<<(std::ostream &os, const ObjCoroutine& co);


template <typename T, typename... Args>
auto alloc_unique_obj(Args &&...args)
	-> typename std::enable_if_t<std::is_base_of_v<Obj, T>, std::unique_ptr<Obj, ObjDeleter>>
{
	static Allocator<T> a;

	using AllocTraits = std::allocator_traits<Allocator<T>>;
	auto p = AllocTraits::allocate(a, 1);
	AllocTraits::construct(a, p, std::forward<Args>(args)...);

	auto deleter = [](Obj *ptr)
	{
		delete_obj(a, static_cast<T *>(ptr));
	};

	return {p, deleter};
}

template <typename T, typename... Args>
auto create_obj(GC &gc, Args &&...args)
	-> typename std::enable_if_t<std::is_base_of_v<Obj, T>, T *>
{
	static_assert(std::is_constructible_v<T, Args...>);
	auto p = alloc_unique_obj<T>(std::forward<Args>(args)...);
	auto res = p.get();
	register_obj(std::move(p), gc);
	return static_cast<T *>(res);
}

template <typename T>
constexpr auto objtype_of()
	-> typename std::enable_if_t<std::is_base_of_v<Obj, T> && !std::is_same_v<Obj, T>, ObjType>
{
	if constexpr (std::is_same_v<T, ObjBoundMethod>)
		return ObjType::BoundMethod;
	else if constexpr (std::is_same_v<T, ObjClass>)
		return ObjType::Class;
	else if constexpr (std::is_same_v<T, ObjClosure>)
		return ObjType::Closure;
	else if constexpr (std::is_same_v<T, ObjFunction>)
		return ObjType::Function;
	else if constexpr (std::is_same_v<T, ObjInstance>)
		return ObjType::Instance;
	else if constexpr (std::is_same_v<T, ObjNative>)
		return ObjType::Native;
	else if constexpr (std::is_same_v<T, ObjString>)
		return ObjType::String;
	else if constexpr (std::is_same_v<T, ObjUpvalue>)
		return ObjType::Upvalue;
	else if constexpr (std::is_same_v<T, ObjArray>)
		return ObjType::Array;
	else if constexpr (std::is_same_v<T, ObjJson>)
		return ObjType::Json;
	else if constexpr (std::is_same_v<T, ObjCoroutine>)
		return ObjType::Coroutine;
}

template <typename T>
constexpr auto nameof()
	-> typename std::enable_if_t<std::is_base_of_v<Obj, T> && !std::is_same_v<Obj, T>, std::string_view>
{

	switch (objtype_of<T>())
	{
	case ObjType::BoundMethod:
		return "bound method";
	case ObjType::Class:
		return "class";
	case ObjType::Closure:
		return "closure";
	case ObjType::Function:
		return "function";
	case ObjType::Instance:
		return "instance";
	case ObjType::Native:
		return "native function";
	case ObjType::String:
		return "string";
	case ObjType::Upvalue:
		return "upvalue";
	case ObjType::Array:
		return "array";
	case ObjType::Json:
		return "json";
	case ObjType::Coroutine:
		return "coroutine";
	default:
		return "unknown type";
	}
}

std::ostream &operator<<(std::ostream &os, const Obj &obj);