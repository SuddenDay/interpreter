#pragma once
#include "common.hpp"
#include <ostream>
#include <variant>
#include <vector>
#include "obj.hpp"
#include "object.hpp"
struct Value
{
    bool operator!() const
    {
        if (is_number())
        {
            return !as<int>();
        }
        else if (is_bool())
        {
            return !as<bool>();
        }
        else if (is_nil())
        {
            return true;
        }
        throw std::runtime_error("Operand ! don't not fit");
    }
    bool operator>(const Value &v) const
    {
        return !(*this <= v);
    }
    bool operator>=(const Value &v) const
    {
        return *this > v || this->value == v.value;
    }
    bool operator<=(const Value &v) const
    {
        return *this < v || this->value == v.value;
    }

    bool operator<(const Value &v) const
    {
        if (is_number())
            return as<int>() < v.as<int>();
        throw std::runtime_error("Operator need to be a number.");
    }
    Value operator-() const
    {
        if (is_number())
            return Value(-as<int>());
        throw std::runtime_error("Operator need to be a number.");
    }

    Value operator+(const Value &other) const
    {
        return performOperation(other, std::plus<>());
    }

    Value operator-(const Value &other) const
    {
        return performOperation(other, std::minus<>());
    }

    Value operator*(const Value &other) const
    {
        return performOperation(other, std::multiplies<>());
    }

    Value operator/(const Value &other) const
    {
        return performOperation(other, std::divides<>());
    }

    template <typename Op>
    Value performOperation(const Value &other, Op op) const;

    constexpr Value(bool value) noexcept : value(value) {}
    constexpr Value() noexcept : value(std::monostate()) {}
    constexpr Value(int value) noexcept : value(value) {}
    constexpr Value(Obj *obj) noexcept : value(obj) {}

    template <typename T>
    T as() const { return std::get<T>(value); }

    bool is_bool() const noexcept { return std::holds_alternative<bool>(value); }
    bool is_nil() const noexcept { return std::holds_alternative<std::monostate>(value); }
    bool is_number() const noexcept { return std::holds_alternative<int>(value); }
    bool is_obj() const noexcept { return std::holds_alternative<Obj *>(value); }

    template <typename U>
    auto is_obj_type() const -> typename std::enable_if_t<std::is_base_of_v<Obj, U> && !std::is_same_v<Obj, U>, bool>
    {
        if (is_obj())
        {
            auto obj = as<Obj *>();
            return obj->is_type(objtype_of<U>());
        }
        return false;
    }

    template <typename U>
    auto as_obj() const -> typename std::enable_if_t<std::is_base_of_v<Obj, U> && !std::is_same_v<Obj, U>, U *>
    {
        if (is_obj_type<U>())
            return static_cast<U *>(as<Obj *>());
        else
            throw std::invalid_argument(std::string("Value is not a(n) ") + nameof<U>().data());
    }

    using value_type = std::variant<bool, int, std::monostate, Obj *>;
    value_type value;
};

std::ostream &operator<<(std::ostream &os, const Value &value);

inline bool operator==(const Value &v1, const Value &v2)
{
    return v1.value == v2.value;
}
inline bool operator!=(const Value &v1, const Value &v2)
{
    return v1.value != v2.value;
}

template <typename Op>
inline Value Value::performOperation(const Value &other, Op op) const
{
    if (is_number() && other.is_number())
        return Value(op(as<int>(), other.as<int>()));
    throw std::runtime_error("PerformOperation only used for number.");
}
