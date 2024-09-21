cmake_minimum_required(VERSION 3.14)
project(my_project)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_compile_options(-Wall -Wextra -pedantic)
include_directories(include)
add_executable(main src/value.cpp src/objstring.cpp src/object.cpp src/memory.cpp src/util.cpp src/scanner.cpp src/parser.cpp src/compiler.cpp src/vm.cpp src/chunk.cpp  main.cpp)