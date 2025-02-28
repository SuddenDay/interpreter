cmake_minimum_required(VERSION 3.14)
project(my_project)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_BUILD_TYPE Debug)

add_compile_options(-Wall -Wextra -pedantic)
include_directories(include)
add_executable(lox src/value.cpp src/objstring.cpp src/object.cpp src/memory.cpp src/scanner.cpp src/parser.cpp src/compiler.cpp src/vm.cpp src/chunk.cpp src/scheduler.cpp main.cpp)