#include "chunk.hpp"
#include "opcode.hpp"
#include "vm.hpp"
#include "compiler.hpp"
#include "memory.hpp"

#include <iostream>
#include <fstream>

static void REPL() {
    VM vm;
    std::string line;
    for (;;) {
        std::cout << "> "; // Output the prompt

        if (!std::getline(std::cin, line)) {
            std::cout << std::endl;
            break; // Exit loop if input fails (e.g., EOF)
        } 
        vm.interpret(line);
    }
}

static std::string readFile(const std::string& path) {
    std::ifstream file(path, std::ios::in | std::ios::binary); // Open the file in binary mode
    if (!file)
        throw std::runtime_error("Could not open file: " + path);

    // Seek to the end to determine the file size
    file.seekg(0, std::ios::end);
    std::size_t fileSize = file.tellg();
    file.seekg(0, std::ios::beg);

    // Read the file content into a string
    std::string buffer(fileSize, '\0'); // Create a string of the right size
    file.read(&buffer[0], fileSize);    // Read the file content into the string

    if (!file)
        throw std::runtime_error("Error reading file: " + path);

    return buffer; // Return the file content as a string
}

static void runFile(const std::string& path) {
    try {
        VM vm;
        std::string source = readFile(path);  // Automatically managed string
        InterpretResult result = vm.interpret(source);

        if (result == INTERPRET_COMPILE_ERROR) throw std::runtime_error("Compile error");
        if (result == INTERPRET_RUNTIME_ERROR) throw std::runtime_error("Runtime error");
    } catch (const std::runtime_error& e) {
        std::cerr << e.what() << std::endl;
        exit(1);
    }
}

int main(int argc, char** argv)
{
    if(argc == 1) {
        REPL();
    } else if(argc == 2) {
        runFile(argv[1]);
    } else {
        exit(1);
    }
}