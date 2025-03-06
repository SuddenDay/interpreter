# A Interpreter Following Clox in Modern C++ Implementation

The interpreter is a bytecode-based stack virtual machine featuring robust control flow and dynamic typing. It supports closures, object-oriented programming, and includes a garbage collection mechanism. The interpreter provides common data types and has native support for dynamic arrays and JSON serialization. Implemented in modern C++, it incorporates aspects of memory allocators, template programming, and useful containers. It offers both REPL and file execution modes, delivering a smooth interactive experience along with debugging tools, designed for easy extension of native methods.

## Libraries Used

While no external libraries are required, some repositories were referenced for implementation:

- [Jeff-Mott-OR/cpplox](https://github.com/Jeff-Mott-OR/cpplox)
- [munificent/craftinginterpreters](https://github.com/munificent/craftinginterpreters)
- [pkusensei/clox](https://github.com/pkusensei/clox)
- [GuoYaxiang/craftinginterpreters_zh](https://github.com/GuoYaxiang/craftinginterpreters_zh)

## Examples

### Dynamic Types

```javascript
var a = 1;
a = "1";
a = [1, 2, [3, 4]];
a[0] += 1;
a = { 1: "1", 2: "2" };
fun b() { return nil; }
a = b;
```

### Control Flow

```cpp
if (true) return true;
else if(false) return false;
else return nil;

if (true) return true;
elif(false) return false;
else return nil;

for (var i = 0; i < 10; i++);
break; continue;

while (true);
```

### Functions

```javascript
var lambda = fun() { };
fun f(int x) {
    if (x == 1 || x == 2)
        return 1;
    return f(x - 1) + f(x - 2);
}
```

### Closures

```javascript
fun outer() {
    fun middle() {
        fun inside() {
            print "inside";
        }
        return inside;
    }
    return middle;
}
```

### Objects

```javascript
class Person {
  sayName() {
    print this.name;
  }
}

var jane = Person();
jane.name = "Jane";

var method = jane.sayName;
method();
```

### Stackful Coroutine 

```javascript
fun a(x, y) {
    print x;
    yield;
    print "resume";
    yield;
    print y;
}
var co = coroutine a("Hello", "World");
resume co;
print "now";
resume co;
print "end";
```
---

## EBNF完整文法

## 1. 程序与声明

```
Program 
  = Declaration* EOF
  ;
```

一个完整的程序由若干条声明 (Declaration) 及一个文件结束标记 (EOF) 组成。

```
Declaration 
  = ClassDeclaration
  | FunDeclaration
  | VarDeclaration
  | Statement
  ;
```

- **ClassDeclaration**: 类声明  
- **FunDeclaration**: 函数声明  
- **VarDeclaration**: 变量声明  
- **Statement**: 语句（若此处不是类/函数/变量声明，则解析为普通语句）

---

## 2. 类声明

```
ClassDeclaration
  = "class" IDENTIFIER ( "<" IDENTIFIER )?
    "{" MethodDeclaration* "}"
  ;
```

- `class Foo { ... }` 声明一个类 `Foo`
- `class Foo < Bar { ... }` 声明一个类 `Foo` 并继承自 `Bar`
- 大括号内是若干方法声明

```
MethodDeclaration
  = Function 
  ;
```

在该语言里，方法声明（包括 `init` 构造器）与函数的形式相同，只不过被放置在类体内并具有特殊含义。底层实现中，它由 `method()` 解析后最终调用 `function()` 产生。

---

## 3. 函数声明

```
FunDeclaration 
  = "fun" IDENTIFIER Function
  ;
```

- `fun myFunction(...) { ... }`
- 此语法和类中的方法声明相似，但这是在最外层或局部作用域单独声明一个函数

```
Function
  = "(" ParameterList? ")" Block
  ;
```

- 用于声明/定义函数体
- 一对圆括号内可选参数列表
- 函数体使用一个 `{ ... }` 的语句块表示

```
ParameterList
  = IDENTIFIER ( "," IDENTIFIER )*
  ;
```

- 函数参数：用逗号分隔，数量可为 0~255

---

## 4. 变量声明

```
VarDeclaration
  = "var" IDENTIFIER ( "=" Expression )? ";"
  ;
```

- `var x;`
- `var x = 10;`
- 必须以分号结束

---

## 5. 语句

```
Statement
  = PrintStatement
  | IfStatement
  | WhileStatement
  | ForStatement
  | ReturnStatement
  | YieldStatement
  | ResumeStatement
  | BreakStatement
  | ContinueStatement
  | LeftBraceBlock     // 匿名块 { ... }
  | ExpressionStatement
  ;
```

### 5.1 打印语句

```
PrintStatement
  = "print" Expression ";"
  ;
```

### 5.2 条件语句

```
IfStatement
  = "if" "(" Expression ")" Statement
    ( "else" Statement )?
  ;
```

### 5.3 `while` 循环语句

```
WhileStatement
  = "while" "(" Expression ")" Statement
  ;
```

### 5.4 `for` 循环语句

```
ForStatement
  = "for" "(" 
       ( VarDeclaration | ExpressionStatement | ";" )    // 初始语句（可声明变量、可执行表达式、或直接分号）
       Expression? ";"                                   // 循环条件（可选）
       Expression?                                       // 每次循环后执行的表达式（可选）
    ")" Statement
  ;
```

### 5.5 `return` 语句

```
ReturnStatement
  = "return" Expression? ";"
  ;
```

- 在构造器（方法名是 `init`）中不允许带返回值

### 5.6 协程相关语句

```
YieldStatement
  = "yield" ";"
  ;

ResumeStatement
  = "resume" IDENTIFIER ";"
  ;
```

- `yield` 只能在函数/方法体内出现  
- `resume` 后面必须跟一个标识符，表示要恢复的协程变量（或闭包中的局部变量）

### 5.7 `break` / `continue` 语句

```
BreakStatement
  = "break" ";"
  ;

ContinueStatement
  = "continue" ";"
  ;
```

- 仅能出现在循环体内

### 5.8 语句块

```
LeftBraceBlock
  = "{" Declaration* "}"
  ;
```

- 大括号包裹的多条声明/语句，用于形成一个新的作用域

### 5.9 表达式语句

```
ExpressionStatement
  = Expression ";"
  ;
```

- 以分号结尾的单一表达式执行语句

---

## 6. 表达式

最外层使用 Pratt 解析，将表达式按照优先级递归拆解。这里用自顶向下的 EBNF 形式描述。

```
Expression
  = Assignment
  ;
```

### 6.1 赋值

```
Assignment
  = LogicOr ( "=" Assignment )?
  ;
```

- 当 `LogicOr` 后紧跟 `=` 时，解析为赋值。  
- 语义上，如果左侧不是可赋值的 lvalue（如变量、属性、列表元素等），会报错。

### 6.2 逻辑或

```
LogicOr
  = LogicAnd ( "or" LogicAnd )*
  ;
```

### 6.3 逻辑与

```
LogicAnd
  = Equality ( "and" Equality )*
  ;
```

### 6.4 相等性比较

```
Equality
  = Comparison
    ( ( "==" | "!=" ) Comparison )*
  ;
```

### 6.5 大小比较

```
Comparison
  = Term
    ( ( "<" | "<=" | ">" | ">=" ) Term )*
  ;
```

### 6.6 加减

```
Term
  = Factor
    ( ( "+" | "-" ) Factor )*
  ;
```

### 6.7 乘除

```
Factor
  = Unary
    ( ( "*" | "/" ) Unary )*
  ;
```

### 6.8 一元运算

```
Unary
  = ( "!" | "-" ) Unary
  | Call
  ;
```

- 这里包括逻辑非 `!` 和负号 `-`

### 6.9 函数调用、数组/字典索引、属性访问

```
Call
  = Primary
    ( "(" ArgumentList? ")"       // 函数/方法调用
    | "." IDENTIFIER              // 对象属性访问
    | "[" Expression "]"          // 列表或字典的下标访问
    )*
  ;
```

#### 6.9.1 实参列表

```
ArgumentList
  = Expression ( "," Expression )*
  ;
```

---

## 7. 基础元素

```
Primary
  = "true"
  | "false"
  | "nil"
  | NUMBER
  | STRING
  | IDENTIFIER
  | "this"
  | ( "super" "." IDENTIFIER )
  | "(" Expression ")"                      // 括号表达式
  | "fun" "(" ParameterList? ")" Block      // 匿名函数表达式
  | CoroutineExpression                     // 协程表达式
  | ListLiteral                             // [ ... ]
  | JsonLiteral                             // { ... }
  ;
```

### 7.1 协程表达式

```
CoroutineExpression
  = "coroutine" ( IDENTIFIER | AnonymousFunction ) "(" ArgumentList? ")"
  ;

AnonymousFunction
  = "fun" "(" ParameterList? ")" Block
  ;
```

- 例如 `coroutine foo(...)` 或 `coroutine fun(...) { ... } (...)`

### 7.2 列表字面量

```
ListLiteral
  = "[" ( Expression ( "," Expression )* )? "]"
  ;
```

### 7.3 JSON/对象字面量

```
JsonLiteral
  = "{" ( Expression ":" Expression ( "," Expression ":" Expression )* )? "}"
  ;
```

- 与典型 `{ key: value, ... }` 类似

---

## 8. 终结符 (Tokens) 简要说明

- `IDENTIFIER`: 标识符，匹配变量名、函数名、类名等  
- `NUMBER`: 数字字面量 (例如 `123`, `3.14`)  
- `STRING`: 字符串字面量 (例如 `"hello"`)  
- `EOF`: 文件或输入结束标记  
- 保留字和符号：`class`, `fun`, `var`, `if`, `else`, `true`, `false`, `nil`, `for`, `while`, `print`, `return`, `break`, `continue`, `yield`, `resume`, `coroutine`, `this`, `super`, 以及各种操作符 `+ - * / ! != == > >= < <= = . , ; : ...` 等

---