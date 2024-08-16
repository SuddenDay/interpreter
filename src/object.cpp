#include "object.hpp"
#include "obj.hpp"
#include "memory.hpp"

void register_obj(std::unique_ptr<Obj, ObjDeleter> &&obj, GC &gc)
{
	obj->next = std::move(gc.objects);
	gc.objects = std::move(obj);
}

