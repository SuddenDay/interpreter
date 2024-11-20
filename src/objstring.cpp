#include "objstring.hpp"
#include "obj.hpp"
#include "object.hpp"
#include "vm.hpp"
#include <string_view>

template ObjString *create_obj_string(std::string_view &str, VM &vm);
template ObjString *create_obj_string(std::string_view &&str, VM &vm);

template <typename T>
ObjString *create_obj_string(T &&str, VM &vm)
{
	auto interned = vm.gc_.find_string(str);
	if (interned != nullptr)
		return interned;

	auto p = alloc_unique_obj<ObjString>();
	auto res = static_cast<ObjString *>(p.get());
	if (vm.current_coroutine_ != nullptr)
		vm.push(res);
	res->content_ = std::forward<T>(str);
	vm.gc_.strings_.emplace(res);
	register_obj(std::move(p), vm.gc_);
	if (vm.current_coroutine_ != nullptr)
		vm.pop();
	return res;
}

std::ostream &operator<<(std::ostream &os, const ObjString &s)
{
	os << "\"" << s.text() << "\"";
	return os;
}

clox_string operator+(const ObjString &lhs, const ObjString &rhs)
{
	return lhs.content_ + rhs.content_;
}
bool operator==(const ObjString &lhs, const ObjString &rhs)
{
	return lhs.content_ == rhs.content_;
}
