#include "object.hpp"
#include "obj.hpp"
#include "memory.hpp"
#include "objstring.hpp"

void register_obj(std::unique_ptr<Obj, ObjDeleter> &&obj, GC &gc)
{
	obj->next = std::move(gc.objects);
	gc.objects = std::move(obj);
}

std::ostream &operator<<(std::ostream &out, const ObjFunction &f)
{
	if (f.name == nullptr)
		out << "<script>";
	else
		out << "<fn " << *f.name << ">";
	return out;
}

std::ostream &operator<<(std::ostream &out, const ObjNative &s)
{
	out << "<native " << s.name << ">";
	return out;
}

std::ostream &operator<<(std::ostream &out, const ObjUpvalue &s)
{
	out << "<upvalue " << s.closed << ">";
	return out;
}

std::ostream &operator<<(std::ostream &out, const ObjClosure &s)
{
	out << "<closure " << *s.function << ">";
	return out;
}

std::ostream& operator<<(std::ostream& out, const Obj& obj)
{
	switch (obj.type)
	{
		// case ObjType::Class:
		// 	out << static_cast<const ObjClass&>(obj);
		// 	break;
		case ObjType::Closure:
			out << static_cast<const ObjClosure&>(obj);
			break;
		case ObjType::Function:
			out << static_cast<const ObjFunction&>(obj);
			break;
		// case ObjType::Instance:
		// 	out << static_cast<const ObjInstance&>(obj);
		// 	break;
		case ObjType::Native:
			out << static_cast<const ObjNative&>(obj);
			break;
		case ObjType::String:
			out << static_cast<const ObjString&>(obj);
			break;
		case ObjType::Upvalue:
			out << static_cast<const ObjUpvalue&>(obj);
			break;
		default:
			throw std::invalid_argument("Unexpected ObjType:: Output failed");
	}
	return out;
}