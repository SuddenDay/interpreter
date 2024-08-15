#pragma once

#include <algorithm>
#include <iostream>
#include <deque>
#include <memory>
#include <set>

struct Value; 

template <template <typename> typename Alloc>
using ValueArray = std::vector<Value, Alloc<Value>>;

struct ObjString;
struct VM;

struct GC;
struct Obj;

struct AllocBase
{
protected:
	inline static GC* gc = nullptr;

public:
	static void init(GC* value)noexcept
	{
		if (gc == nullptr && value != nullptr)
			gc = value;
	}
};

template<typename T>
struct Allocator : public AllocBase
{
	static_assert(!std::is_const_v<T>);

	using value_type = T;

	inline static std::allocator<T> worker = {};
	using worker_traits = std::allocator_traits<decltype(worker)>;

	Allocator() {}
	Allocator(const Allocator&) = default;
	template<typename U>
	Allocator(const Allocator<U>&) {}

	T* allocate(std::size_t n);
	void deallocate(T* p, std::size_t n);
};


struct GC
{
	using ObjDeleter = std::function<void(Obj*)>;
	std::unique_ptr<Obj, ObjDeleter> objects = nullptr;
	std::set<ObjString*, std::less<ObjString*>, Allocator<ObjString*>> strings;
	std::deque<Obj*> gray_stack;

	size_t bytes_allocated = 0;
	size_t next_gc = 1024 * 1024;

	bool running = false;

	VM& vm;

	explicit GC(VM& vm)noexcept
		:vm(vm)
	{
	}

	void collect();

private:
	void mark_roots();
	void mark_array(const ValueArray<Allocator>& array);
	void mark_compiler_roots();
	void mark_object(Obj* const ptr);
	//void mark_table(const table& table);
	void mark_value(const Value& value);

	void trace_references();
	void blacken_object(Obj* ptr);
	void remove_white_string()noexcept;

	void sweep();

public:
	template<typename T>
	ObjString* find_string(const T& str)const
	{
		if(auto res = std::find_if(strings.cbegin(), strings.cend(),
			[&str](const auto& it) { return it->content == str; }); res != strings.end())
			return *res;
		return nullptr;
	}

};

template<typename T, typename U>
bool operator==(const Allocator<T>& t, const Allocator<U>& u)
{
	return true;
}

template<typename T, typename U>
bool operator!=(const Allocator<T>& t, const Allocator<U>& u)
{
	return false;
}

template<typename T>
T* Allocator<T>::allocate(std::size_t n)
{
	auto alloc_size = n * sizeof(T);
	auto p = worker_traits::allocate(worker, n);

	if (gc != nullptr)
	{
		std::cout<<"allocate: " << alloc_size << std::endl;
		gc->bytes_allocated += alloc_size;
		if(gc->running)
			gc->collect();
		if (gc->bytes_allocated > gc->next_gc)
			gc->collect();
	}
	return p;
}

template<typename T>
void Allocator<T>::deallocate(T* p, std::size_t n)
{
	worker_traits::deallocate(worker, p, n);
	if (gc != nullptr) {
		gc->bytes_allocated -= sizeof(T) * n;
		std::cout<<"deallocate: " << sizeof(T) * n << std::endl;
	}
}
