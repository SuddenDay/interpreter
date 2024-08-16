#include "chunk.hpp"
#include "opcode.hpp"
#include "vm.hpp"
#include "compiler.hpp"
#include "memory.hpp"

#include <iostream>
#include <fstream>

static InterpretResult interpret(const std::string& source, VM& vm) {
    vm.gc.running = false;
    Compiler compiler(source, vm);
    if(!compiler.compile())
        return INTERPRET_COMPILE_ERROR;
    return vm.run();
}

static void REPL() {
    Chunk chunk;
    VM vm(&chunk);
    std::string line;
    for (;;) {
        std::cout << "> "; // Output the prompt

        if (!std::getline(std::cin, line)) {
            std::cout << std::endl;
            break; // Exit loop if input fails (e.g., EOF)
        } 
        interpret(line, vm);
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
        Chunk chunk;
        VM vm(&chunk);
        std::string source = readFile(path);  // Automatically managed string
        InterpretResult result = interpret(source, vm);

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

    // clox::Chunk chunk;
    // uint8_t constant;

    // constant = chunk.addConstant(1);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // constant = chunk.addConstant(2);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_ADD);

    // constant = chunk.addConstant(3);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_MUL);

    // constant = chunk.addConstant(1);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_SUB);

    // constant = chunk.addConstant(4);
    // chunk.writeChunk(clox::Opcode::OP_CONSTANT);
    // chunk.writeChunk(constant);

    // chunk.writeChunk(clox::Opcode::OP_DIV);

    // chunk.writeChunk(clox::Opcode::OP_NEGATE);
    // chunk.writeChunk(clox::Opcode::OP_RETURN);
    // // std::cout << chunk << std::endl;
    // clox::VM vm(&chunk);
    // vm.interpreter();
}