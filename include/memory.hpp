#pragma once

#include <algorithm>
#include <iostream>
#include <deque>
#include <memory>
#include <set>
#include "table.hpp"
#include "obj.hpp"
#include "common.hpp"

struct ObjString;
struct VM;

struct GC;
struct Obj;

struct AllocBase
{
	inline static GC *gc = nullptr;
	static void init(GC *value) noexcept
	{
		if (gc == nullptr && value != nullptr)
			gc = value;
	}
};

template <typename T>
struct Allocator : AllocBase
{
	static_assert(!std::is_const_v<T>);

	using value_type = T;

	inline static std::allocator<T> worker;
	using worker_traits = std::allocator_traits<decltype(worker)>;

	Allocator() {}
	Allocator(const Allocator &) = default;
	template <typename U>
	Allocator(const Allocator<U> &) {}

	T *allocate(std::size_t n);
	void deallocate(T *p, std::size_t n);
};

struct GC
{
	std::unique_ptr<Obj, ObjDeleter> objects_ = nullptr;
	std::set<ObjString *, std::less<ObjString *>, Allocator<ObjString *>> strings_;
	std::deque<Obj *> gray_stack_;

	size_t bytes_allocated_ = 0;
	size_t next_gc_ = 1024 * 1024;

	VM &vm_;

	explicit GC(VM &vm) noexcept
		: vm_(vm)
	{
	}

	void collect();

private:
	void mark_roots();
	void mark_array(const std::vector<Value, Allocator<Value>> &array);
	void mark_compiler_roots();
	void mark_object(Obj *const ptr);
	void mark_table(const Table &table);
	void mark_value(const Value &value);

	void trace_references();
	void blacken_object(Obj *ptr);
	void remove_white_string() noexcept;

	void sweep();

public:
	ObjString *find_string(const std::string_view &str) const;

};

template <typename T>
T *Allocator<T>::allocate(std::size_t n)
{
	auto alloc_size = n * sizeof(T);
	auto p = worker_traits::allocate(worker, n);

#ifdef STRESS_TEST
	std::cout << "allocate: " << alloc_size << std::endl;
#endif
	gc->bytes_allocated_ += alloc_size;
#ifndef STRESS_TEST
	if (gc->bytes_allocated_ > gc->next_gc_)
#endif
		gc->collect();
	

	return p;
}

template <typename T>
void Allocator<T>::deallocate(T *p, std::size_t n)
{
	worker_traits::deallocate(worker, p, n);
	gc->bytes_allocated_ -= sizeof(T) * n;
}
