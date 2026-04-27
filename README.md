# Lox Interpreter — A Bytecode VM in Modern C++

一个基于字节码的栈式虚拟机 Lox 语言解释器，采用 **现代 C++17** 实现。该项目参考了 Robert Nystrom 的 *Crafting Interpreters* 一书中的 clox，并使用模板、RAII、智能指针和 STL 容器进行了 C++ 风格的重写。

**核心特性**:
- 动态类型系统（int / bool / nil / string / array / json / function / class）
- 词法作用域、闭包（上值 Upvalue）
- 面向对象（类定义、单继承、方法覆盖、`this`/`super`）
- 有栈协程（`yield` / `resume`，协作式调度）
- 标记-清除垃圾回收（三色标记算法，带写屏障的字符串驻留）
- 原生函数扩展（`clock`、数组 `push`/`pop`/`erase`/`insert`）
- 字节码反汇编调试工具
- REPL 交互模式 + 文件执行模式

**性能优化** (v2.0):
- **Direct Threading** — 计算跳转分发替代 switch 中心化分发
- **Stack Caching** — 栈顶值缓存在局部变量中减少内存写入
- **Constant Folding** — 编译期常量表达式求值
- **Hidden Classes** — 实例字段从哈希表改为偏移索引向量
- **Inline Caching** — 属性访问缓存 (class, name) → offset 映射

---

## 快速开始

### 构建

```bash
mkdir build && cd build
cmake .. && make -j$(nproc)
```

构建要求：
- CMake >= 3.14
- C++17 编译器（GCC / Clang）
- 编译选项：`-Wall -Wextra -pedantic`

构建产物为 `build/lox` 可执行文件。

### 运行

```bash
# REPL 交互模式（直接运行，无参数）
./build/lox

# 执行 .lox 文件
./build/lox example.lox

# 运行全部测试
bash runtest.sh
```

### REPL 使用说明

REPL 支持多行输入：以空行或分号 `;` 结尾的行视为一次输入结束，代码将被立即编译执行。

### 构建选项

```bash
# 启用字节码逐条反汇编调试
cmake .. -DENABLE_DEBUG_MODE=ON && make -j$(nproc)

# GC 压力测试（每次分配都触发 GC）
cmake .. -DENABLE_STRESS_TEST=ON && make -j$(nproc)
```

---

## 语言特性

### 动态类型

变量可以持有任意类型的值，类型在运行时确定。

```javascript
var a = 1;
a = "hello";
a = [1, 2, [3, 4]];
a[0] += 1;
a = { "name": "Lox", "version": 1 };
fun b() { return nil; }
a = b;
```

支持的类型：`int`（整数）、`bool`（`true`/`false`）、`nil`、`string`、`array`、`json`（字典）、`function`、`class`。

---

### 运算符

**算术**: `+`, `-`, `*`, `/`\
**比较**: `==`, `!=`, `>`, `>=`, `<`, `<=`\
**逻辑**: `and`, `or`, `!`\
**一元**: `!`（逻辑非）、`-`（负号）

`+` 运算符对数字执行加法，对字符串执行拼接。

---

### 控制流

```javascript
// 条件分支
if (true) return true;
elif (false) return false;
else return nil;

// while 循环
while (condition) { ... }

// for 循环
for (var i = 0; i < 10; i++) {
    if (i == 5) continue;
    if (i == 8) break;
    print i;
}
```

`elif` 是 `else if` 的语法糖；`break` 和 `continue` 仅可在循环体内使用。

---

### 变量与作用域

```javascript
var x = 10;          // 全局变量
{
    var y = 20;      // 局部变量，出块即销毁
    print x + y;     // 内部可访问外部变量
}
```

变量声明以 `var` 开头，支持词法作用域嵌套与遮蔽。

---

### 函数

```javascript
// 命名函数
fun fibonacci(n) {
    if (n == 1 or n == 2) return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

// 匿名函数（Lambda）
var f = fun(x, y) { return x + y; };
print f(3, 4);

// 函数可作为值传递
fun apply(fn, a, b) { return fn(a, b); }
```

函数最多支持 **255 个参数**，主体由 `{ ... }` 语句块构成。支持递归调用。`return` 语句可带返回值或单独使用（返回 `nil`）。

---

### 闭包

函数捕获其定义时所在作用域中的变量（上值 Upvalue），即使离开原作用域后仍然有效。

```javascript
fun makeCounter() {
    var count = 0;
    fun increment() {
        count = count + 1;
        return count;
    }
    return increment;
}

var c1 = makeCounter();
print c1();   // 1
print c1();   // 2
var c2 = makeCounter();
print c2();   // 1  -- c1 和 c2 拥有独立的 count
```

闭包支持嵌套多层以及捕获变量的修改。

---

### 类与对象（OOP）

```javascript
class Animal {
    init(name) {
        this.name = name;
    }
    speak() {
        print this.name;
    }
}

class Dog < Animal {
    speak() {
        print this.name + " barks!";
    }
}

var d = Dog("Buddy");
d.speak();   // "Buddy barks!"
```

- `init(...)` 是构造器，通过类名加参数调用触发
- `this` 引用当前实例，`super.method()` 调用父类方法
- 类内的函数声明即为方法
- 实例的方法可被取出作为一等值（绑定方法 BoundMethod）

---

### 数组 (Array) 与 JSON/字典

```javascript
// 数组字面量
var arr = [1, 2, 3, 4];
print arr[0];        // 1
arr[0] = 42;
print arr;           // [42, 2, 3, 4]

// 嵌套数组
var mat = [[1, 2], [3, 4]];
print mat[1][0];     // 3

// JSON/字典字面量（键和值均可为任意类型）
var obj = { "name": "Lox", 1: true, true: [1, 2, 3] };
print obj["name"];   // "Lox"
print obj[1];        // true

// 原生数组方法
push(arr, 99);       // 追加元素
pop(arr);            // 弹出末尾元素
insert(arr, 0, 0);   // 在索引 0 处插入 0
erase(arr, 2);       // 删除索引 2 处的元素
```

数组元素和 JSON 字段均支持 `[index]` 操作符读取和赋值。

---

### 有栈协程

```javascript
fun worker(name) {
    print name + " start";
    yield;
    print name + " resume";
    yield;
    print name + " done";
}

var co1 = coroutine worker("A");
var co2 = coroutine worker("B");

resume co1;  // A start
resume co2;  // B start
resume co1;  // A resume
resume co2;  // B resume
resume co1;  // A done
resume co2;  // B done
```

- `coroutine func(args...)` 创建协程但不立即执行
- `yield;` 暂停当前协程，让出执行权
- `resume co;` 恢复指定协程的执行
- 每个协程拥有独立的执行栈和调用帧，调度器以协作式调度管理

---

## 项目架构

### 整体流程

```
源代码 (.lox)
       │
       ▼
  ┌──────────┐
  │ Scanner   │  词法分析 → Token 流
  └──────────┘
       │
       ▼
  ┌──────────┐
  │ Parser    │  语法框架（持有 Scanner）
  └──────────┘
       │
       ▼
  ┌─────────────┐
  │ Compiler    │  Pratt 解析 + 代码生成（含常量折叠）→ Chunk 字节码
  └─────────────┘
       │
       ▼
  ┌──────────┐
  │    VM    │  字节码解释执行（Direct Threading + Stack Caching）
  │  ├ CallFrame[]  调用帧栈
  │  ├ Value[]      值栈
  │  ├ GC           三色标记-清除 GC
  │  ├ Scheduler    有栈协程调度器
  │  ├ globals_     全局变量表
  │  ├ get_ic_[]    GET_PROPERTY 内联缓存
  │  └ set_ic_[]    SET_PROPERTY 内联缓存
  └──────────┘
       │
       ▼
     输出 / 交互
```

### 对象模型层级

```
Obj (基类)
 ├── ObjString      驻留字符串
 ├── ObjFunction    函数（持有字节码 Chunk）
 ├── ObjClosure     闭包（函数 + 捕获的上值）
 ├── ObjUpvalue     上值（指向栈变量或已闭合值）
 ├── ObjClass       类（名称 + 方法表 + 字段偏移表）
 ├── ObjInstance    实例（类指针 + 字段值向量）
 ├── ObjBoundMethod 绑定方法（接收者 + 闭包）
 ├── ObjNative      原生函数（C++ std::function）
 ├── ObjArray       动态数组
 ├── ObjJson        JSON/字典（unordered_map）
 └── ObjCoroutine   有栈协程（独立栈 + 帧栈）
```

### 调用约定

```
FRAMES_MAX = 64              // 最大调用栈深度
STACK_MAX = FRAMES_MAX × 255  // 最大值栈容量
```

每个函数调用分配一个 `CallFrame`，包含指令指针（`ip_`，字节码偏移）、栈槽偏移（`slot_`）和闭包引用。

---

## 目录结构

```
interpreter/
├── main.cpp              # 入口点（REPL / 文件执行）
├── CMakeLists.txt         # CMake 构建配置
├── runtest.sh             # 测试运行脚本
├── README.md              # 项目文档
│
├── include/               # 头文件
│   ├── common.hpp         # 公共定义（InterpretResult, STACK_MAX, FRAMES_MAX...）
│   ├── opcode.hpp         # 字节码操作码（X-Macro 定义，共 47 个）
│   ├── tokentype.hpp      # Token 类型枚举（36 种）
│   ├── value.hpp          # 统一值类型（std::variant）
│   ├── chunk.hpp          # 字节码块（bytecode + 常量池 + 行号）
│   ├── scanner.hpp        # 词法分析器
│   ├── parser.hpp         # Pratt 解析框架
│   ├── compiler.hpp       # 编译器（Pratt 递归下降 + 代码生成 + 常量折叠）
│   ├── vm.hpp             # 虚拟机（Direct Threading 执行器 + IC 缓存数组）
│   ├── obj.hpp            # 对象基类
│   ├── object.hpp         # 对象类型定义（含 Hidden Class 支持）
│   ├── objstring.hpp      # 字符串对象 + 驻留
│   ├── memory.hpp         # GC / 自定义分配器
│   ├── table.hpp          # 哈希表（std::unordered_map 别名）
│   ├── scheduler.hpp      # 协程调度器
│   ├── native.hpp         # 原生函数（clock / push / pop / insert / erase）
│   └── util.hpp           # 字节码反汇编工具
│
├── src/                   # 源文件（与 include/ 对应）
│   ├── value.cpp, chunk.cpp, scanner.cpp, parser.cpp
│   ├── compiler.cpp, vm.cpp, object.cpp, objstring.cpp
│   ├── memory.cpp, scheduler.cpp
│
├── test/                  # 测试用例（.lox 文件）
│   ├── variable.lox       # 变量与作用域
│   ├── control_flow.lox   # 控制流
│   ├── function.lox       # 函数与递归
│   ├── closure.lox        # 闭包
│   ├── class.lox          # 类与继承
│   ├── list.lox           # 数组操作
│   ├── json.lox           # JSON/字典
│   ├── dynamic_type.lox   # 动态类型
│   ├── coroutine.lox      # 协程
│   └── gc.lox             # 垃圾回收
│
├── test/expected/         # 测试期望输出
└── build/                 # 构建产物
```

---

## 性能优化详解 (v2.0)

### 1. Direct Threading（计算跳转分发）

传统的 `switch(instruction)` 循环分发在每次迭代时需要一个分支预测器不友好的中心化跳转。Direct Threading 使用 GCC/Clang 扩展 `&&label` 获取每一个 opcode handler 的标签地址，存储在 `dispatch_table[]` 数组中，然后通过 `goto *dispatch_table[opcode]` 实现 O(1) 的间接跳转分发。

```cpp
// 标签地址表
void *dispatch_table[] = {
    [OP_RETURN]   = &&L_OP_RETURN,
    [OP_CONSTANT] = &&L_OP_CONSTANT,
    // ... 共 47 个
};

// 分发宏
#define NEXT() do { \
    uint8_t i = frame->read_byte(); \
    if (i >= OP_COUNT) { runtime_error("Bad opcode?"); return ...; } \
    goto *dispatch_table[i]; \
} while (false)

// 每个 handler 是一个 label 块
L_OP_ADD: { ... } NEXT();
```

相比 `switch` 省去了跳转表的二次查找和范围检查，CPU 分支预测器可以独立预测每个 handler 出口的目标地址。

### 2. Stack Caching（栈顶缓存）

传统栈式 VM 在每个 push/pop/peek 操作时都需要读写栈数组（内存）。Stack Caching 将栈顶值始终保持在局部变量 `top` 中：

```cpp
auto &top_ = current_coroutine_->top_;   // 栈指针
auto &stack = current_coroutine_->stack_; // 栈数组
Value top = top_ > 0 ? stack[top_ - 1] : Value(); // 栈顶缓存

// push 操作：SPUSH(v) 宏同时更新栈数组和缓存
#define SPUSH(v) do { stack[top_++] = top; top = (v); stack[top_-1] = top; } while(0)

// 不变量：top == stack[top_-1] 在整个 run() 循环中始终保持
```

不变量 `top == stack[top_-1]` 允许大多数 handler 直接从 `top` 读取操作数，将内存写入归并为一次操作。

### 3. Constant Folding（常量折叠）

编译器在 `binary()` 函数中检测编译期常量表达式并预求值：

```cpp
// 编译 1 + 2 * 3 时：
// 1. 先解析 2 * 3 → 检测到两个常量 → 折叠为 OP_CONSTANT(6)
// 2. 再处理 1 + 6 → 折叠为 OP_CONSTANT(7)
// 最终只发出一条 OP_CONSTANT(7)，无需运行时指令

if (sz >= 4 && bytecode[sz-4] == OP_CONSTANT && bytecode[sz-2] == OP_CONSTANT) {
    Value left = constants[leftIdx], right = constants[rightIdx];
    auto folded = try_arithmetic(op, left, right);
    if (folded) {
        bytecode.resize(sz - 4);      // 删除两条 OP_CONSTANT
        emit_constant(*folded);        // 发出折叠后的单条常量
        return;
    }
}
```

支持：数值四则运算、比较（`>`, `<`）、相等性检查（`==`, `!=`）。

### 4. Hidden Classes（隐藏类 / Shape）

传统实现中 `ObjInstance` 的字段存储在 `std::unordered_map` 中，每次属性访问需哈希查找。Hidden Classes 将字段改为偏移量索引：

```
ObjClass {
    name_, methods_, field_offsets_: { "x"→0, "y"→1, "z"→2 }
}

ObjInstance {
    objClass_ → 指向 Dog (field_offsets_: { "name"→0, "age"→1 })
    field_values_: ["Buddy", 5]
}
```

- `ObjClass::get_or_add_field_offset(name)` 首次访问属性时分配偏移量
- `OP_SET_PROPERTY` 写入 `field_values_[offset]` 替代哈希插入
- `OP_GET_PROPERTY` 读取 `field_values_[offset]` 替代哈希查找
- 继承时子类复制父类的 `field_offsets_`
- 字段访问从 O(1) 哈希变为 O(1) 数组索引（常数因子降低约 5-10×）

### 5. Inline Caching（内联缓存）

在 Hidden Classes 基础上的进一步优化。VM 中维护两个 64 条目的缓存数组：

```cpp
static constexpr int IC_SIZE = 64;
InlineCacheEntry get_ic_[IC_SIZE];  // GET_PROPERTY 缓存
InlineCacheEntry set_ic_[IC_SIZE];  // SET_PROPERTY 缓存

struct InlineCacheEntry {
    ObjClass* klass_;   // 上次访问的类
    ObjString* name_;    // 上次访问的属性名
    int offset_;         // 缓存的位置偏移
};
```

**OP_GET_PROPERTY 执行流程**：

```cpp
auto &ic = get_ic_[(frame->ip_ * 0x9e3779b9u) & (IC_SIZE - 1)];
if (ic.klass_ == instance->objClass_ && ic.name_ == name) {
    // 命中 → 直接索引读取
    top = instance->field_values_[ic.offset_];
} else {
    // 未命中 → 查 Hidden Class 并更新缓存
    int offset = instance->objClass_->get_field_offset(name);
    ic.klass_ = instance->objClass_;
    ic.name_ = name;
    ic.offset_ = offset;
    top = instance->field_values_[offset];
}
```

- 哈希函数采用 Golden Ratio 乘法（`ip * 0x9e3779b9u`），以字节码地址 IP 为键
- 缓存命中的属性访问从两次间接访问（查 class → 查数组）降为一次数组索引
- GC 标记根集时也会标记缓存中的 `klass_` 和 `name_` 指针，避免悬垂引用

---

## 内部设计要点

### 1. 值表示 — `std::variant`

所有 Lox 值统一表示为 `Value`，底层使用：

```cpp
std::variant<bool, int, std::monostate, Obj*>
```

- `bool`  → 布尔值
- `int`   → 整数（该项目中不直接支持浮点数）
- `std::monostate` → `nil`
- `Obj*`  → 所有堆分配对象的指针（字符串、函数、闭包、类、实例、数组、JSON、协程等）

提供 `is_obj_type<T>()` 和 `as_obj<T>()` 模板方法进行类型检查与转换，并特化了 `std::hash<Value>` 以支持字典键的哈希。

### 2. Pratt 解析器

编译器采用 Pratt 解析（也叫 Top-Down Operator Precedence 解析），核心数据结构为 `ParseRule`：

```cpp
struct ParseRule {
    ParseFn prefix_;           // 前缀解析函数（作为表达式开头）
    ParseFn infix_;            // 中缀解析函数（跟在其他表达式后）
    Precedence precedence_;    // 优先级（共 10 级）
};
```

每个 Token 类型都有对应的规则，解析时从最低优先级出发，遇到同或更高优先级的中缀操作符时继续解析。这种模式使得语法扩展只需添加新的规则条目。

### 3. 标记-清除 GC（三色标记算法）

垃圾回收采用经典的标记-清除算法，以三色抽象管理：

- **白色**：初始状态，不可达对象将在 sweep 阶段被回收
- **灰色**：已标记但子引用尚未检查
- **黑色**：已标记且所有子引用已处理

**GC 触发条件**：当累计分配量超过 `next_gc_`（初始 1MB，动态增长 `× 2`）时触发。

**GC 流程**：
1. `mark_roots()` — 标记根集（VM 栈、调用帧闭包、打开的上值、全局变量表、调度器中的协程、**内联缓存数组中的 Class/String 指针**）
2. `trace_references()` — 灰栈遍历，递归标记所有可达对象
3. `remove_white_string()` — 从驻留字符串集中移除不可达字符串
4. `sweep()` — 遍历对象链表，删除白色对象

### 4. 字符串驻留（Interning）

所有字符串在创建时先查找驻留池（`std::unordered_set<ObjString*>`），若存在则返回已有对象。此举保证相同内容的字符串在内存中只有一份，同时加速字符串相等比较（比较指针即可）。

### 5. 有栈协程调度器

每个 `ObjCoroutine` 拥有独立的执行上下文（Value 栈、CallFrame 栈、状态、指令指针）。调度器基于 `std::deque<ObjCoroutine*>` 维护就绪队列：

- `yield` — 当前协程置为 `SUSPENDED`，放回队列末尾，调度器运行下一个协程
- `resume co` — 将目标协程从队列取出并恢复执行

主协程是调度器创建的第一个协程（对应脚本顶层代码），所有 yield 最终都会回到主协程的调度循环中。

### 6. 上值与闭包实现

上值（Upvalue）是闭包捕获的外部局部变量的引用。当内层函数引用了外层函数的局部变量时，编译器生成 `OP_GET_UPVALUE`/`OP_SET_UPVALUE` 操作码。

- 变量仍在栈中时，上值指向栈槽（`location_`）
- 变量出作用域时，`close_upvalues()` 将值复制到 `closed_` 字段，并将 `location_` 重定向到 `closed_`
- 同一变量的多个上值通过链表（`next_`）共享

---

## 内建原生函数

| 函数 | 参数 | 说明 |
|:---|:---|:---|
| `clock()` | 无 | 返回自 epoch 以来的秒数（整数） |
| `push(array, value)` | array, value | 向数组末尾追加元素 |
| `pop(array)` | array | 弹出并返回数组末尾元素 |
| `erase(array, index)` | array, index | 删除数组中指定索引的元素并返回 |
| `insert(array, index, value)` | array, index, value | 在数组指定索引处插入元素 |

可通过 `VM::define_native(name, fn)` 注册更多原生函数。

---

## 字节码操作码

共 **47 个字节码指令**（在 [opcode.hpp](file:///home/cambricon/test/interpreter/include/opcode.hpp) 中以 X-Macro 方式定义）：

**栈操作**: `OP_RETURN`, `OP_CONSTANT`, `OP_POP`, `OP_NIL`, `OP_TRUE`, `OP_FALSE`, `OP_PRINT`

**算术/比较**: `OP_ADD`, `OP_SUB`, `OP_MUL`, `OP_DIV`, `OP_NEGATE`, `OP_NOT`, `OP_EQUAL`, `OP_GREATER`, `OP_LESS`

**变量**: `OP_DEFINE_GLOBAL`, `OP_GET_GLOBAL`, `OP_SET_GLOBAL`, `OP_SET_LOCAL`, `OP_GET_LOCAL`

**控制流**: `OP_JUMP_IF_FALSE`, `OP_JUMP`, `OP_LOOP`, `OP_CONTINUE`, `OP_BREAK`

**函数/闭包**: `OP_CALL`, `OP_CLOSURE`, `OP_GET_UPVALUE`, `OP_SET_UPVALUE`, `OP_CLOSE_UPVALUE`, `OP_FUNCTION`

**类/OOP**: `OP_CLASS`, `OP_SET_PROPERTY`, `OP_GET_PROPERTY`, `OP_METHOD`, `OP_INVOKE`, `OP_INHERIT`, `OP_GET_SUPER`, `OP_SUPER_INVOKE`

**数据结构**: `OP_ARRAY`, `OP_JSON`, `OP_GET_ELEMENT`, `OP_SET_ELEMENT`

**协程**: `OP_CREATE_COROUTINE`, `OP_YIELD_COROUTINE`, `OP_RESUME_COROUTINE`

---

## EBNF 完整文法

```
Program         → Declaration* EOF

Declaration     → ClassDeclaration | FunDeclaration | VarDeclaration | Statement

ClassDeclaration → "class" IDENTIFIER ("<" IDENTIFIER)? "{" MethodDeclaration* "}"
MethodDeclaration → Function

FunDeclaration  → "fun" IDENTIFIER Function
Function        → "(" ParameterList? ")" Block
ParameterList   → IDENTIFIER ("," IDENTIFIER)*

VarDeclaration  → "var" IDENTIFIER ("=" Expression)? ";"

Statement       → PrintStatement | IfStatement | WhileStatement | ForStatement
                | ReturnStatement | YieldStatement | ResumeStatement
                | BreakStatement | ContinueStatement
                | LeftBraceBlock | ExpressionStatement

PrintStatement  → "print" Expression ";"
IfStatement     → "if" "(" Expression ")" Statement ("else" Statement)?
WhileStatement  → "while" "(" Expression ")" Statement
ForStatement    → "for" "(" (VarDeclaration | ExpressionStatement | ";")
                       Expression? ";" Expression? ")" Statement
ReturnStatement → "return" Expression? ";"
YieldStatement  → "yield" ";"
ResumeStatement → "resume" IDENTIFIER ";"
BreakStatement  → "break" ";"
ContinueStatement → "continue" ";"
LeftBraceBlock  → "{" Declaration* "}"
ExpressionStatement → Expression ";"

Expression      → Assignment
Assignment      → LogicOr ("=" Assignment)?
LogicOr         → LogicAnd ("or" LogicAnd)*
LogicAnd        → Equality ("and" Equality)*
Equality        → Comparison (("==" | "!=") Comparison)*
Comparison      → Term (("<" | "<=" | ">" | ">=") Term)*
Term            → Factor (("+" | "-") Factor)*
Factor          → Unary (("*" | "/") Unary)*
Unary           → ("!" | "-") Unary | Call

Call            → Primary ("(" ArgumentList? ")" | "." IDENTIFIER | "[" Expression "]")*
ArgumentList    → Expression ("," Expression)*

Primary         → "true" | "false" | "nil" | NUMBER | STRING | IDENTIFIER
                | "this" | ("super" "." IDENTIFIER)
                | "(" Expression ")"
                | "fun" "(" ParameterList? ")" Block
                | CoroutineExpression
                | ListLiteral
                | JsonLiteral

CoroutineExpression → "coroutine" (IDENTIFIER | AnonymousFunction) "(" ArgumentList? ")"
AnonymousFunction   → "fun" "(" ParameterList? ")" Block

ListLiteral     → "[" (Expression ("," Expression)*)? "]"
JsonLiteral     → "{" (Expression ":" Expression ("," Expression ":" Expression)*)? "}"
```

---

## 参考

- [Crafting Interpreters](https://craftinginterpreters.com/) — Robert Nystrom
- [munificent/craftinginterpreters](https://github.com/munificent/craftinginterpreters)
