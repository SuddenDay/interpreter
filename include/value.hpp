#pragma once
#include <ostream>
#include <variant>
#include <vector>

struct Obj;
struct Value;
std::ostream &operator<<(std::ostream &os, const Value &value);

bool operator==(const Value &v1, const Value &v2);
bool operator!=(const Value &v1, const Value &v2);
bool operator==(const std::monostate nil, const Obj* obj);
bool operator==(const Obj* obj, const std::monostate nil);

struct Value
{
    Value operator-() const;

    Value(bool value);
    Value();
    Value(int value);
    Value(Obj *obj); 

    template <typename T>
    T as() const { return std::get<T>(value_); }

    bool is_bool() const { return std::holds_alternative<bool>(value_); }
    bool is_nil() const { return std::holds_alternative<std::monostate>(value_); }
    bool is_number() const { return std::holds_alternative<int>(value_); }
    bool is_obj() const { return std::holds_alternative<Obj *>(value_); }

    template <typename U>
    auto is_obj_type() const -> typename std::enable_if_t<std::is_base_of_v<Obj, U> && !std::is_same_v<Obj, U>, bool>;

    template <typename U>
    auto as_obj() const -> typename std::enable_if_t<std::is_base_of_v<Obj, U> && !std::is_same_v<Obj, U>, U *>;

    using value_type = std::variant<bool, int, std::monostate, Obj *>;
    value_type value_;
};



namespace std {
    template <>
    struct hash<Value> {
        size_t operator()(const Value &v) const {
            return std::visit([](auto&& arg) -> size_t {
                using T = std::decay_t<decltype(arg)>;
                if constexpr (std::is_same_v<T, bool>) {
                    return std::hash<bool>{}(arg);
                } else if constexpr (std::is_same_v<T, int>) {
                    return std::hash<int>{}(arg);
                } else if constexpr (std::is_same_v<T, std::monostate>) {
                    return 0; // nil case, assign a constant hash
                } else if constexpr (std::is_same_v<T, Obj *>) { // no real hash just hash obj_addr
                    return std::hash<Obj*>{}(arg);
                }
            }, v.value_);
        }
    };
}
