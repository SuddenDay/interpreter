#include "memory.hpp"
#include "value.hpp"
#include "object.hpp"
#include "objstring.hpp"
#include "common.hpp"
#include "vm.hpp"

constexpr auto GC_HEAP_GROW_FACTOR = 2L;

bool StringCompare::operator()(const ObjString* a, const ObjString* b) const noexcept {
    return a->text() < b->text();
}

bool StringCompare::operator()(const ObjString* a, const std::string_view& b) const noexcept {
    return a->text() < b;
}

bool StringCompare::operator()(const std::string_view& a, const ObjString* b) const noexcept {
    return a < b->text();
}

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

	for (int i = 0; i < vm_.IC_SIZE; i++)
	{
		if (vm_.get_ic_[i].klass_)
			mark_object(vm_.get_ic_[i].klass_);
		if (vm_.get_ic_[i].name_)
			mark_object(vm_.get_ic_[i].name_);
		if (vm_.set_ic_[i].klass_)
			mark_object(vm_.set_ic_[i].klass_);
		if (vm_.set_ic_[i].name_)
			mark_object(vm_.set_ic_[i].name_);
	}
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

void GC::mark_json(const std::unordered_map<Value, Value, std::hash<Value>, std::equal_to<Value>, Allocator<std::pair<const Value, Value>>> &json)
{
	for (const auto &[k, v] : json)
	{
		mark_value(k);
		mark_value(v);
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
	ptr->blacken(*this);
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
    auto it = strings_.find(str);
    if (it != strings_.end())
        return *it;
    return nullptr;
}