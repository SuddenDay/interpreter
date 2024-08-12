#pragma once
#include "util.hpp"
#include "common.hpp"
#include "parser.hpp"
#include "scanner.hpp"

class Compiler
{
public:
    Compiler(const std::string &str) : parser(str) {}
    bool compile();
    Chunk *currentChunk()
    {
        return &parser.compilingChunk;
    }
    void endCompiler()
    {
        parser.compilingChunk.emitReturn();
#ifdef DEBUG_MODE
        if (!parser.hadError)
        {
            std::cout << parser.compilingChunk;
        }
#endif
    }

private:
    Parser parser;
};
