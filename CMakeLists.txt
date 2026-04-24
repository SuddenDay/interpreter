cmake_minimum_required(VERSION 3.14)
project(lox LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(ENABLE_DEBUG_MODE "Enable VM debug trace output" OFF)
option(ENABLE_STRESS_TEST "Force GC collection on every allocation" OFF)

set(CMAKE_BUILD_TYPE Debug CACHE STRING "" FORCE)

add_executable(lox
    src/value.cpp
    src/objstring.cpp
    src/object.cpp
    src/memory.cpp
    src/scanner.cpp
    src/parser.cpp
    src/compiler.cpp
    src/vm.cpp
    src/chunk.cpp
    src/scheduler.cpp
    main.cpp
)

target_include_directories(lox PRIVATE include)
target_compile_options(lox PRIVATE -Wall -Wextra -pedantic)

if(ENABLE_DEBUG_MODE)
    target_compile_definitions(lox PRIVATE DEBUG_MODE)
endif()

if(ENABLE_STRESS_TEST)
    target_compile_definitions(lox PRIVATE STRESS_TEST)
endif()

target_compile_options(lox PRIVATE $<$<CONFIG:Release>:-O2>)

install(TARGETS lox DESTINATION bin)
