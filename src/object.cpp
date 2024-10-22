#include "object.hpp"
#include "obj.hpp"
#include "value.hpp"
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
	os << "<class " << *c.name << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjInstance &ins)
{
	os << "<instance " << *ins.objClass << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjArray &arr)
{
	os << "[";
	int n = arr.values.size();
	for (int i = 0; i < n; i++)
	{
		os << arr.values[i];
		if (i != n - 1)
			os << ", ";
	}
	os << "]";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjJson &json)
{
	os << "{";
	int n = json.kv.size();
	int i = 0;
	for (const auto &[k, v] : json.kv)
	{
		os << k << " : " << v;
		if (i != n - 1)
			os << ", ";
		i++;
	}
	os << "}";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjBoundMethod &bm)
{
	os << "<method " << *bm.method->function << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const ObjCoroutine &co)
{
	os << "<coroutine " << *co.closure << ">";
	return os;
}

std::ostream &operator<<(std::ostream &os, const Obj &obj)
{
	switch (obj.type)
	{
	case ObjType::Class:
		os << static_cast<const ObjClass &>(obj);
		break;
	case ObjType::Closure:
		os << static_cast<const ObjClosure &>(obj);
		break;
	case ObjType::Function:
		os << static_cast<const ObjFunction &>(obj);
		break;
	case ObjType::Instance:
		os << static_cast<const ObjInstance &>(obj);
		break;
	case ObjType::Native:
		os << static_cast<const ObjNative &>(obj);
		break;
	case ObjType::String:
		os << static_cast<const ObjString &>(obj);
		break;
	case ObjType::Upvalue:
		os << static_cast<const ObjUpvalue &>(obj);
		break;
	case ObjType::BoundMethod:
		os << static_cast<const ObjBoundMethod &>(obj);
		break;
	case ObjType::Array:
		os << static_cast<const ObjArray &>(obj);
		break;
	case ObjType::Json:
		os << static_cast<const ObjJson &>(obj);
		break;
	case ObjType::Coroutine:
		os << static_cast<const ObjCoroutine &>(obj);
		break;
	default:
		throw std::invalid_argument("Unexpected ObjType:: obj puts failed");
	}
	return os;
}

ObjCoroutine::ObjCoroutine(ObjClosure *closure, const std::vector<Value>& arguments)
	: Obj(ObjType::Coroutine), closure(closure), stack(1024), frames(FRAMES_MAX), frame_count(0), top(0), status(CoroutineStatus::SUSPENDED), arguments(arguments)
{
	CallFrame frame;
	frame.closure = closure;
	frame.ip = 0;
	stack[top++] = Value();
	for(auto arg = arguments.rbegin(); arg != arguments.rend(); arg++)
		stack[top++] = *arg;
	frame.slots = stack.data();
	frames[frame_count++] = frame;
}
