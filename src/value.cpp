#include "value.hpp"
#include "obj.hpp"
#include "objstring.hpp"
#include "object.hpp"

bool operator==(const std::monostate nil, const Obj *obj)
{
	return obj == nullptr;
}
bool operator==(const Obj *obj, const std::monostate nil)
{
	return obj == nullptr;
}

bool operator==(const Value &v1, const Value &v2)
{
	return v1.value_ == v2.value_;
}

bool operator!=(const Value &v1, const Value &v2)
{
	return !(v1 == v2);
}

std::string Value::value_to_string(Value value)
{
    if (value.is_obj_type<ObjString>())
        return std::string(value.as_obj<ObjString>()->content_);
    else if (value.is_number())
        return std::to_string(value.as<int>());
    else
        throw std::runtime_error("Operands must be two numbers or (string + anything).");
}

Value Value::operator-() const
{
	if (is_number())
		return Value(-as<int>());
	else
		throw std::runtime_error("Operator need to be a number.");
}

Value::Value(bool value) : value_(value) {}
Value::Value() : value_(std::monostate()) {}
Value::Value(int value) : value_(value) {}
Value::Value(Obj *obj) : value_(obj) {}

template auto Value::is_obj_type<ObjString>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjString> && !std::is_same_v<Obj, ObjString>, bool>;
template auto Value::as_obj<ObjString>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjString> && !std::is_same_v<Obj, ObjString>, ObjString *>;
template auto Value::is_obj_type<ObjFunction>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjFunction> && !std::is_same_v<Obj, ObjFunction>, bool>;
template auto Value::as_obj<ObjFunction>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjFunction> && !std::is_same_v<Obj, ObjFunction>, ObjFunction *>;
template auto Value::is_obj_type<ObjNative>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjNative> && !std::is_same_v<Obj, ObjNative>, bool>;
template auto Value::as_obj<ObjNative>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjNative> && !std::is_same_v<Obj, ObjNative>, ObjNative *>;
template auto Value::is_obj_type<ObjClosure>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjClosure> && !std::is_same_v<Obj, ObjClosure>, bool>;
template auto Value::as_obj<ObjClosure>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjClosure> && !std::is_same_v<Obj, ObjClosure>, ObjClosure *>;
template auto Value::is_obj_type<ObjClass>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjClass> && !std::is_same_v<Obj, ObjClass>, bool>;
template auto Value::as_obj<ObjClass>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjClass> && !std::is_same_v<Obj, ObjClass>, ObjClass *>;
template auto Value::is_obj_type<ObjInstance>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjInstance> && !std::is_same_v<Obj, ObjInstance>, bool>;
template auto Value::as_obj<ObjInstance>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjInstance> && !std::is_same_v<Obj, ObjInstance>, ObjInstance *>;
template auto Value::is_obj_type<ObjBoundMethod>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjBoundMethod> && !std::is_same_v<Obj, ObjBoundMethod>, bool>;
template auto Value::as_obj<ObjBoundMethod>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjBoundMethod> && !std::is_same_v<Obj, ObjBoundMethod>, ObjBoundMethod *>;
template auto Value::is_obj_type<ObjArray>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjArray> && !std::is_same_v<Obj, ObjArray>, bool>;
template auto Value::as_obj<ObjArray>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjArray> && !std::is_same_v<Obj, ObjArray>, ObjArray *>;
template auto Value::is_obj_type<ObjJson>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjJson> && !std::is_same_v<Obj, ObjJson>, bool>;
template auto Value::as_obj<ObjJson>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjJson> && !std::is_same_v<Obj, ObjJson>, ObjJson *>;
template auto Value::is_obj_type<ObjCoroutine>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjCoroutine> && !std::is_same_v<Obj, ObjCoroutine>, bool>;
template auto Value::as_obj<ObjCoroutine>() const -> typename std::enable_if_t<std::is_base_of_v<Obj, ObjCoroutine> && !std::is_same_v<Obj, ObjCoroutine>, ObjCoroutine *>;

// is_obj_type 实例化了所有Obj类那么调用的objtype_of类似的也是实例化过了
// as_obj 与 nameof 之间的关系同理

template <typename U>
auto Value::is_obj_type() const -> typename std::enable_if_t<std::is_base_of_v<Obj, U> && !std::is_same_v<Obj, U>, bool>
{
	if (is_obj())
	{
		auto obj = as<Obj *>();
		return obj->is_type(objtype_of<U>());
	}
	return false;
}

template <typename U>
auto Value::as_obj() const -> typename std::enable_if_t<std::is_base_of_v<Obj, U> && !std::is_same_v<Obj, U>, U *>
{
	if (is_obj_type<U>())
		return static_cast<U *>(as<Obj *>());
	else
		throw std::runtime_error(std::string("Value is not a ") + nameof<U>().data());
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
			   value.value_);

	return os;
}
