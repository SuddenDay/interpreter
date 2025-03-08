=== "multiply"===
=== "fib"===
=== "fun"===
=== <script> ===
           stackframe: [ <closure <script>> ]
0000   OP_CLOSURE [1] <fn "multiply">
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ]
0002   OP_DEFINE_GLOBAL [0] "multiply"
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "multiply"
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ]
0006   OP_CONSTANT [3] 3
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ][ 3 ]
0008   OP_CONSTANT [4] 4
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ][ 3 ][ 4 ]
0010   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ][ 3 ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ][ 3 ][ 4 ][ 3 ]
0002   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ][ 3 ][ 4 ][ 3 ][ 4 ]
0004   OP_MUL
           stackframe: [ <closure <script>> ][ <closure <fn "multiply">> ][ 3 ][ 4 ][ 12 ]
0005   OP_RETURN
           stackframe: [ <closure <script>> ][ 12 ]
0012   OP_PRINT
12
           stackframe: [ <closure <script>> ]
0013   OP_CLOSURE [6] <fn "fib">
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ]
0015   OP_DEFINE_GLOBAL [5] "fib"
           stackframe: [ <closure <script>> ]
0017   OP_GET_GLOBAL [7] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ]
0019   OP_CONSTANT [8] 10
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ]
0021   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 10 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 10 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 10 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 10 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 9 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 9 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 9 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 9 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 8 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 8 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 8 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 8 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 7 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 7 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 7 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 7 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 6 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 6 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ 3 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 8 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ 5 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 13 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 8 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 8 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 6 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 6 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ 3 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 8 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ 8 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ <closure <fn "fib">> ][ 8 ][ 21 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 9 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 9 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 7 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 7 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 7 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 7 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 6 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 6 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ 3 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 8 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ 5 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ <closure <fn "fib">> ][ 7 ][ 13 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 21 ][ 13 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ <closure <fn "fib">> ][ 9 ][ 34 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 10 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 10 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 8 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 8 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 8 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 8 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 7 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 7 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 7 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 7 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 6 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 6 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ 3 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ <closure <fn "fib">> ][ 6 ][ 8 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 7 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 8 ][ 5 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ <closure <fn "fib">> ][ 7 ][ 13 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 8 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 8 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 6 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 6 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 6 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 5 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 5 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 3 ][ 2 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ <closure <fn "fib">> ][ 5 ][ 5 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 6 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 4 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 4 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 3 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 1 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ <closure <fn "fib">> ][ 3 ][ 2 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 4 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 2 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ false ]
0015   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0016   OP_GET_GLOBAL [1] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ]
0020   OP_CONSTANT [2] 1
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0022   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0023   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ <closure <fn "fib">> ][ 1 ][ 1 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0025   OP_GET_GLOBAL [3] "fib"
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ]
0027   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ]
0029   OP_CONSTANT [4] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 2 ][ 2 ]
0031   OP_SUB
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0032   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0000   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0002   OP_CONSTANT [0] 2
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ][ 2 ]
0004   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0005 OP_JUMP_IF_FALSE 5    -> 15
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ true ]
0008   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ]
0009   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ <closure <fn "fib">> ][ 0 ][ 0 ]
0011   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ][ 0 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ <closure <fn "fib">> ][ 2 ][ 1 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 2 ][ 1 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ <closure <fn "fib">> ][ 4 ][ 3 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 5 ][ 3 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ <closure <fn "fib">> ][ 6 ][ 8 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 13 ][ 8 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ <closure <fn "fib">> ][ 8 ][ 21 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 34 ][ 21 ]
0034   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "fib">> ][ 10 ][ 55 ]
0035   OP_RETURN
           stackframe: [ <closure <script>> ][ 55 ]
0023   OP_PRINT
55
           stackframe: [ <closure <script>> ]
0024   OP_CLOSURE [10] <fn "fun">
           stackframe: [ <closure <script>> ][ <closure <fn "fun">> ]
0026   OP_DEFINE_GLOBAL [9] "lambda"
           stackframe: [ <closure <script>> ]
0028   OP_GET_GLOBAL [11] "lambda"
           stackframe: [ <closure <script>> ][ <closure <fn "fun">> ]
0030   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "fun">> ]
0000   OP_CONSTANT [0] "lambda function"
           stackframe: [ <closure <script>> ][ <closure <fn "fun">> ][ "lambda function" ]
0002   OP_PRINT
"lambda function"
           stackframe: [ <closure <script>> ][ <closure <fn "fun">> ]
0003   OP_NIL
           stackframe: [ <closure <script>> ][ <closure <fn "fun">> ][ nil ]
0004   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0032   OP_POP
           stackframe: [ <closure <script>> ]
0033   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0034   OP_RETURN
