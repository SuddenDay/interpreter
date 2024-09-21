#pragma once

#include <string_view>
#include "table.hpp"
#include "obj.hpp"
#include "chunk.hpp"
#include <functional>
#include <unordered_map>

template<typename T>
struct Allocator;

struct ObjString;
struct GC;
struct Obj;
using ObjDeleter = std::function<void(Obj*)>;

void register_obj(std::unique_ptr<Obj, ObjDeleter>&& obj, GC& gc); 

template<typename T, template<typename>typename Alloc = Allocator>
auto delete_obj(Alloc<T>& a, T* ptr)
->typename std::enable_if_t<std::is_base_of_v<Obj, T>, void>
{
	using AllocTraits = std::allocator_traits<Alloc<T>>;
	AllocTraits::destroy(a, ptr);
	AllocTraits::deallocate(a, ptr, 1);
}

struct ObjFunction : public Obj
{
	int arity = 0;
	int upvalueCount = 0;
	Chunk chunk;
	ObjString* name = nullptr;

	ObjFunction() :Obj(ObjType::Function) {}
};

std::ostream& operator<<(std::ostream& os, const ObjFunction& f);

using NativeFn = std::function<Value(int argCount, Value* args)>;

struct ObjNative : public Obj
{
	NativeFn function;
	std::string_view name;

	ObjNative(NativeFn func, std::string_view name)
		:Obj(ObjType::Native), function(func), name(name)
	{
	}
};
std::ostream& operator<<(std::ostream& os, const ObjNative& s);

struct Upvalue {
	bool isLocal;
	int index;
};

struct ObjUpvalue : public Obj
{
	Value* location;
	Value closed;
	ObjUpvalue* next = nullptr;

	ObjUpvalue(Value* slot)
		: Obj(ObjType::Upvalue),  location(slot), closed(Value())
	{
	}
};
std::ostream& operator<<(std::ostream& os, const ObjUpvalue& s);

struct ObjClosure : public Obj
{
	ObjFunction* function;
	std::vector<ObjUpvalue*, Allocator<ObjUpvalue*>> upvalues;

	ObjClosure(ObjFunction* func) : Obj(ObjType::Closure), function(func), upvalues(func->upvalueCount, nullptr) {}

	int upvalueCount() { return upvalues.size(); }
};
std::ostream& operator<<(std::ostream& os, const ObjClosure& s);

struct ObjClass : public Obj
{
	ObjString* const name;
	Table methods;

	ObjClass(ObjString* name) 
		:Obj(ObjType::Class), name(name)
	{
	}
};
std::ostream& operator<<(std::ostream& os, const ObjClass& c);

struct ObjInstance : public Obj
{
	ObjClass* const objClass;
	Table fields;

	ObjInstance(ObjClass* objClass)
		:Obj(ObjType::Instance), objClass(objClass)
	{
	}
};
std::ostream& operator<<(std::ostream& os, const ObjInstance& ins);

struct ObjArray: public Obj
{
	std::vector<Value, Allocator<Value>> values;
	ObjArray(int size)
		:Obj(ObjType::Array), values(size)
	{
	}
};
std::ostream& operator<<(std::ostream& os, const ObjArray& arr);

struct ObjJson: public Obj
{
	std::unordered_map<Value, Value, std::hash<Value>, std::equal_to<Value>, Allocator<std::pair<const Value, Value>>> kv;
	ObjJson()
		:Obj(ObjType::Json)
	{
	}
};
std::ostream& operator<<(std::ostream& os, const ObjJson& json);

struct ObjBoundMethod :public Obj
{
	Value receiver;
	ObjClosure* const method;

	ObjBoundMethod(Value receiver, ObjClosure* method)
		:Obj(ObjType::BoundMethod), receiver(std::move(receiver)), method(method) // why?
	{
	}
};
std::ostream& operator<<(std::ostream& os, const ObjBoundMethod& bm);

template<typename T, template<typename> typename Alloc = Allocator, typename... Args>
auto alloc_unique_obj(Args&&... args)
->typename std::enable_if_t<std::is_base_of_v<Obj, T>, std::unique_ptr<Obj, ObjDeleter>>
{
	static Alloc<T> a;

	using AllocTraits = std::allocator_traits<Alloc<T>>;
	auto p = AllocTraits::allocate(a, 1);
	AllocTraits::construct(a, p, std::forward<Args>(args)...);

	auto deleter = [](Obj* ptr)
	{
		delete_obj(a, static_cast<T*>(ptr));
	};

	return { p, deleter };
}

template<typename T, typename... Args>
auto create_obj(GC& gc, Args&&... args)
->typename std::enable_if_t<std::is_base_of_v<Obj, T>, T*>
{
	static_assert(std::is_constructible_v<T, Args...>);
	auto p = alloc_unique_obj<T>(std::forward<Args>(args)...);
	auto res = p.get();
	register_obj(std::move(p), gc);
	return static_cast<T*>(res);
}


template<typename T>
constexpr auto objtype_of()
->typename std::enable_if_t<std::is_base_of_v<Obj, T> && !std::is_same_v<Obj, T>, ObjType>
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
}

template<typename T>
constexpr auto nameof()
->typename std::enable_if_t<std::is_base_of_v<Obj, T> && !std::is_same_v<Obj, T>, std::string_view>
{
	using namespace std::literals;

	switch (objtype_of<T>())
	{
		case ObjType::BoundMethod:
			return "bound method"sv;
		case ObjType::Class:
			return "class"sv;
		case ObjType::Closure:
			return "closure"sv;
		case ObjType::Function:
			return "function"sv;
		case ObjType::Instance:
			return "instance"sv;
		case ObjType::Native:
			return "native function"sv;
		case ObjType::String:
			return "string"sv;
		case ObjType::Upvalue:
			return "upvalue"sv;
		case ObjType::Array:
			return "array"sv;
		case ObjType::Json:
			return "json"sv;
		default:
			return "unknown type";
	}
}

std::ostream& operator<<(std::ostream& os, const Obj& obj);