#include "object.hpp"
#include "obj.hpp"
#include "memory.hpp"
#include "objstring.hpp"

void register_obj(std::unique_ptr<Obj, ObjDeleter> &&obj, GC &gc)
{
	obj->next = std::move(gc.objects);
	gc.objects = std::move(obj);
}

std::ostream &operator<<(std::ostream &os, const ObjFunction &f)
{
	if (f.name == nullptr)
		os << "<script>";
	else
		os << "<fn " << *f.name << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjNative &s)
{
	os << "<native " << s.name << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjUpvalue &s)
{
	os << "<upvalue " << s.closed << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjClosure &s)
{
	os << "<closure " << *s.function << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjClass &c)
{
	os << "<class " << *c.name <<">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjInstance &ins)
{
	os << "<instance " << *ins.objClass << ">";
	return os;
}

std::ostream & operator<<(std::ostream & os, const ObjArray & arr)
{
	os << "[";
	int n = arr.values.size();
	for(int i = 0; i < n; i++)  {
		os << arr.values[i];
		if(i != n - 1)
			os << ", ";
	}
	os << "]";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjBoundMethod &bm)
{
	os << "<method " << *bm.method->function << ">";
	return os;
}

std::ostream& operator<<(std::ostream& os, const Obj& obj)
{
	switch (obj.type)
	{
		case ObjType::Class:
			os << static_cast<const ObjClass&>(obj);
			break;
		case ObjType::Closure:
			os << static_cast<const ObjClosure&>(obj);
			break;
		case ObjType::Function:
			os << static_cast<const ObjFunction&>(obj);
			break;
		case ObjType::Instance:
			os << static_cast<const ObjInstance&>(obj);
			break;
		case ObjType::Native:
			os << static_cast<const ObjNative&>(obj);
			break;
		case ObjType::String:
			os << static_cast<const ObjString&>(obj);
			break;
		case ObjType::Upvalue:
			os << static_cast<const ObjUpvalue&>(obj);
			break;
		case ObjType::BoundMethod:
			os << static_cast<const ObjBoundMethod&>(obj);
			break;
		case ObjType::Array:
			os << static_cast<const ObjArray&>(obj);
			break;
		default:
			throw std::invalid_argument("Unexpected ObjType:: obj puts failed");
	}
	return os;
}