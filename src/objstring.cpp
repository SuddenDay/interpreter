#include "objstring.hpp"
#include "obj.hpp"
#include "object.hpp"
#include "vm.hpp"
#include <string_view>

template ObjString *create_obj_string(std::string_view& str, VM &vm);
template ObjString *create_obj_string(std::string_view&& str, VM &vm);
template ObjString *create_obj_string(std::basic_string_view<char, std::char_traits<char> > const& str, VM &vm);

template <typename T>
ObjString *create_obj_string(T &&str, VM &vm)
{
	auto interned = vm.gc.find_string(str);
	if (interned != nullptr)
		return interned;

	auto p = alloc_unique_obj<ObjString>();
	auto res = static_cast<ObjString*>(p.get());
	vm.push(res);
	res->content = std::forward<T>(str);
	vm.gc.strings.emplace(res);
	register_obj(std::move(p), vm.gc);
	vm.pop();
	return res;
}

std::ostream &operator<<(std::ostream &os, const ObjString &s)
{
    os << "\"" << s.text() << "\"";
    return os;
}

clox_string operator+(const ObjString& lhs, const ObjString& rhs)
{
	return lhs.content + rhs.content;
}
bool operator==(const ObjString& lhs, const ObjString& rhs)
{
	return lhs.content == rhs.content;
}

