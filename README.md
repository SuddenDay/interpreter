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

### Inheritance

```javascript
class Father {
  local() {
    print "local";
  }

  invoke() {
    print "Dunk in the.";
    this.local();
  }
}

class Son < Father {
  invoke() {
    super.invoke();
  }
}
```

---