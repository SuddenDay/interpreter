#include "compiler.hpp"

namespace clox {
    void compiler::compile() {
        int line = -1;
        while (true) {
            token token = scan.scanToken();
            if (token.line != line) {
                std::cout << std::setw(4) << token.line << " ";
                line = token.line;
            } else {
                std::cout << "   | ";
            }
        // Print the token type and the token string
            std::cout << std::setw(2) << token.type << " '"
                  << token.string << "'" << std::endl;
            if (token.type == TOKEN_EOF)
                break;
        }
    }
}