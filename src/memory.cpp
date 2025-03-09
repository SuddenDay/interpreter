#include "memory.hpp"
#include "value.hpp"
#include "object.hpp"
#include "objstring.hpp"
#include "common.hpp"
#include "vm.hpp"

constexpr auto GC_HEAP_GROW_FACTOR = 2;

void GC::collect()
{
	if(vm_.current_coroutine_ == nullptr)
		return ;
	auto before = bytes_allocated_;
	mark_roots();
	trace_references();
	remove_white_string();
	sweep();
#ifdef STRESS_TEST
	if (before - bytes_allocated_ != 0)
		std::cout << "gc collect " << before - bytes_allocated_ << " bytes" << std::endl;
#endif

	next_gc_ = bytes_allocated_ * GC_HEAP_GROW_FACTOR;
}

void GC::mark_roots()
{
	for (auto slot = 0; slot < vm_.current_coroutine_->top_; ++slot)
		mark_value(vm_.current_coroutine_->stack_[slot]);

	for (int i = 0; i < vm_.current_coroutine_->frame_count_; i++)
		mark_object(vm_.current_coroutine_->frames_.at(i).closure_);

	for (auto upvalue = vm_.open_upvalues_; upvalue != nullptr; upvalue = upvalue->next_)
		mark_object(upvalue);

	mark_object(vm_.scheduler_.current_coroutine_);
	for (auto co : vm_.scheduler_.coroutines_)
		if (co->status_ != CoroutineStatus::FINISHED)
			mark_object(co);

	mark_table(vm_.globals_);
	// mark_compiler_roots();
	mark_object(vm_.init_string_);
}

void GC::mark_array(const std::vector<Value, Allocator<Value>> &array)
{
	for (auto &value : array)
		mark_value(value);
}

// void GC::mark_compiler_roots() // in running coroutine, we don't expect gc in compiling 
// {
// 	auto compiler = vm_.cu_.current_.get();
// 	while (compiler != nullptr)
// 	{
// 		mark_object(compiler->function_);
// 		compiler = compiler->enclosing_.get();
// 	}
// }

void GC::mark_object(Obj *const ptr)
{
	if (ptr == nullptr)
		return;
	if (ptr->is_marked_)
		return;

	ptr->is_marked_ = true;
	gray_stack_.push_back(ptr);
}

void GC::mark_value(const Value &value)
{
	if (value.is_obj())
		mark_object(value.as<Obj *>());
}

void GC::mark_table(const Table &table)
{
	for (auto &[key, value] : table)
	{
		mark_object(key);
		mark_value(value);
	}
}

void GC::trace_references()
{
	while (!gray_stack_.empty())
	{
		auto obj = gray_stack_.front();
		blacken_object(obj);
		gray_stack_.pop_front();
	}
}

void GC::blacken_object(Obj *ptr)
{
	switch (ptr->type_)
	{
	case ObjType::BoundMethod:
	{
		auto bound = static_cast<ObjBoundMethod *>(ptr);
		mark_value(bound->receiver_);
		mark_object(bound->method_);
		break;
	}
	case ObjType::Class:
	{
		auto objClass = static_cast<ObjClass *>(ptr);
		mark_object(objClass->name_);
		mark_table(objClass->methods_);
		break;
	}
	case ObjType::Closure:
	{
		auto closure = static_cast<ObjClosure *>(ptr);
		mark_object(closure->function_);
		for (auto v : closure->upvalues_)
			mark_object(v);
		break;
	}
	case ObjType::Function:
	{
		auto function = static_cast<ObjFunction *>(ptr);
		mark_object(function->name_);
		mark_array(function->chunk_.constants_);
		break;
	}
	case ObjType::Instance:
	{
		auto instance = static_cast<ObjInstance *>(ptr);
		mark_object(instance->objClass_);
		mark_table(instance->fields_);
		break;
	}
	case ObjType::Upvalue:
	{
		mark_value(static_cast<ObjUpvalue *>(ptr)->closed_);
		break;
	}
	case ObjType::Array:
	{
		auto arrayPtr = static_cast<ObjArray *>(ptr);
		mark_array(arrayPtr->values_);
		break;
	}
	case ObjType::Json:
	{
		auto jsonPtr = static_cast<ObjJson *>(ptr);
		for (const auto &[k, v] : jsonPtr->kv_)
		{
			mark_value(k);
			mark_value(v);
		}
		break;
	}
	case ObjType::Coroutine:
	{
		auto coPtr = static_cast<ObjCoroutine *>(ptr);
		if (coPtr->status_ != CoroutineStatus::FINISHED)
		{
			mark_object(coPtr->closure_);
			for (int i = 0; i < coPtr->top_; i++)
				mark_value(coPtr->stack_.at(i));
			for (auto &arg : coPtr->arguments_)
				mark_value(arg);
			for (int i = 0; i < coPtr->frame_count_; i++)
				mark_object(coPtr->frames_.at(i).closure_);
		}
		break;
	}
	case ObjType::Native:
	case ObjType::String:
		break;
	default:
		break;
	}
}

void GC::remove_white_string() noexcept
{
	for (auto it = strings_.begin(); it != strings_.end();)
	{
		if (*it != nullptr && !(*it)->is_marked_)
			it = strings_.erase(it);
		else
			++it;
	}
}

void GC::sweep()
{
	Obj *previous = nullptr;
	Obj *object = objects_.get();
	while (object != nullptr)
	{
		if (object->is_marked_)
		{
			object->is_marked_ = false;
			previous = object;
			object = object->next_.get();
		}
		else
		{
			decltype(object->next_) temp = std::move(object->next_);
			if (previous == nullptr)
			{
				objects_ = std::move(temp);
				object = objects_.get();
			}
			else
			{
				previous->next_ = std::move(temp);
				object = previous->next_.get();
			}
		}
	}
}

ObjString *GC::find_string(const std::string_view &str) const
{
	if (auto res = std::find_if(strings_.cbegin(), strings_.cend(),
								[&str](const auto &it)
								{ return it->content_ == str; });
		res != strings_.end())
		return *res;
	return nullptr;
}