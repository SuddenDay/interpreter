#include "value.hpp"
#include "obj.hpp"
#include "objstring.hpp"

std::ostream &operator<<(std::ostream &out, const Obj &obj)
{
	switch (obj.type)
	{
	// case ObjType::Class:
	// 	out << static_cast<const ObjClass&>(obj);
	// 	break;
	// case ObjType::Closure:
	// 	out << static_cast<const ObjClosure&>(obj);
	// 	break;
	// case ObjType::Function:
	// 	out << static_cast<const ObjFunction&>(obj);
	// 	break;
	// case ObjType::Instance:
	// 	out << static_cast<const ObjInstance&>(obj);
	// 	break;
	// case ObjType::Native:
	// 	out << static_cast<const ObjNative&>(obj);
	// 	break;
	case ObjType::String:
		out << static_cast<const ObjString &>(obj);
		break;
	// case ObjType::Upvalue:
	// 	out << static_cast<const ObjUpvalue&>(obj);
	// 	break;
	 default:
	 	break;
	// 	throw std::invalid_argument("Unexpected ObjType:: Output failed ");
	}
	return out;
}
std::ostream &operator<<(std::ostream &os, const Value &value)
{
	std::visit([&os](auto &&arg)
			   {
                   using T = std::decay_t<decltype(arg)>;
                   if constexpr (std::is_same_v<T, bool>)
                       os << std::boolalpha << arg << std::noboolalpha;
                   else if constexpr (std::is_same_v<T, std::monostate>)
                       os << "nil";
                   else if constexpr (std::is_same_v<T, int>)
                       os << arg;
                   else if constexpr (std::is_same_v<T, Obj*>) {
                       os << *arg;
                   } },
			   value.value);

	return os;
}

