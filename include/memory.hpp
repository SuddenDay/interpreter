#pragma once

#include <algorithm>
#include <iostream>
#include <deque>
#include <memory>
#include <set>
#include <unordered_map>
#include <string_view>
#include "table.hpp"
#include "obj.hpp"
#include "common.hpp"

struct ObjString;
struct VM;

struct GC;
struct Obj;

struct StringCompare {
    using is_transparent = void;
    bool operator()(const ObjString* a, const ObjString* b) const noexcept;
    bool operator()(const ObjString* a, const std::string_view& b) const noexcept;
    bool operator()(const std::string_view& a, const ObjString* b) const noexcept;
};

inline GC*& get_default_gc() noexcept
{
    thread_local GC* gc = nullptr;
    return gc;
}

template <typename T>
struct Allocator
{
	static_assert(!std::is_const_v<T>);

	using value_type = T;

	inline static std::allocator<T> worker;
	using worker_traits = std::allocator_traits<decltype(worker)>;

	Allocator() = default;
	Allocator(const Allocator &) = default;
	template <typename U>
	Allocator(const Allocator<U> &) {}

	T *allocate(std::size_t n);
	void deallocate(T *p, std::size_t n);

    template <typename U>
    bool operator==(const Allocator<U>&) const { return true; }
    template <typename U>
    bool operator!=(const Allocator<U>&) const { return false; }
};

struct GC
{
	std::unique_ptr<Obj, ObjDeleter> objects_ = nullptr;
	std::set<ObjString*, StringCompare, Allocator<ObjString*>> strings_;
	std::deque<Obj *> gray_stack_;

	size_t bytes_allocated_ = 0;
	size_t next_gc_ = 1024 * 1024;

	VM &vm_;

	explicit GC(VM &vm) noexcept
		: vm_(vm)
	{
	}

	void collect();

	void mark_array(const std::vector<Value, Allocator<Value>> &array);
	void mark_json(const std::unordered_map<Value, Value, std::hash<Value>, std::equal_to<Value>, Allocator<std::pair<const Value, Value>>> &json);
	void mark_object(Obj *const ptr);
	void mark_table(const Table &table);
	void mark_value(const Value &value);

private:
	void mark_roots();
	// void mark_compiler_roots();

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
	auto gcp = get_default_gc();
	gcp->bytes_allocated_ += alloc_size;
#ifndef STRESS_TEST
	if (gcp->bytes_allocated_ > gcp->next_gc_)
#endif
		gcp->collect();
	

	return p;
}

template <typename T>
void Allocator<T>::deallocate(T *p, std::size_t n)
{
	worker_traits::deallocate(worker, p, n);
	get_default_gc()->bytes_allocated_ -= sizeof(T) * n;
}
