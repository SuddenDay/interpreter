#include "object.hpp"
#include "obj.hpp"

void register_obj(std::unique_ptr<Obj, ObjDeleter> &&obj, GC &gc)
{
	obj->next = std::move(gc.objects);
	gc.objects = std::move(obj);
}

