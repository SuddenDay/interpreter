#include "compiler.hpp"
#include "tokentype.hpp"

    bool Compiler::compile() {
        // int line = -1;
        // while (true) {
        //     Token token = scanner.scanToken();
        //     if (token.line != line) {
        //         std::cout << std::setw(4) << token.line << " ";
        //         line = token.line;
        //     } else {
        //         std::cout << "   | ";
        //     }
        // // Print the token type and the token string
        //     std::cout << std::setw(2) << token.type << " '"
        //           << token.string << "'" << std::endl;
        //     if (token.type == TOKEN_EOF)
        //         return true;
        // }

        parser.advance();
        parser.expression();
        parser.consume(TOKEN_EOF);
        endCompiler();
        return !parser.hadError;
    }
