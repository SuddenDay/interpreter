#pragma once
#include "util.hpp"
#include "common.hpp"
#include "scanner.hpp"

namespace clox {
    class compiler {
        public:
        compiler(const std::string& str) : scan(str.c_str()) {}
        void compile();
        private:
        scanner scan;
    };

}