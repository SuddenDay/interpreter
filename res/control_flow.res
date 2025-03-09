allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 96
allocate: 56
allocate: 80
allocate: 40
allocate: 96
allocate: 56
allocate: 80
allocate: 40
allocate: 96
allocate: 56
allocate: 80
allocate: 40
allocate: 96
allocate: 56
allocate: 80
allocate: 40
allocate: 96
allocate: 56
allocate: 136
allocate: 80
allocate: 40
allocate: 16
allocate: 32
allocate: 64
allocate: 128
allocate: 256
allocate: 80
allocate: 40
allocate: 512
allocate: 1024
allocate: 80
allocate: 31
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 31
allocate: 40
=== <script> ===
allocate: 80
allocate: 160
           stackframe: [ <closure <script>> ]
0000   OP_CONSTANT [1] 0
           stackframe: [ <closure <script>> ][ 0 ]
0002   OP_DEFINE_GLOBAL [0] "sum"
allocate: 56
           stackframe: [ <closure <script>> ]
0004   OP_CONSTANT [2] 0
           stackframe: [ <closure <script>> ][ 0 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0008   OP_CONSTANT [3] 3
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 3 ]
0010   OP_LESS
           stackframe: [ <closure <script>> ][ 0 ][ true ]
0011 OP_JUMP_IF_FALSE 11   -> 126
           stackframe: [ <closure <script>> ][ 0 ][ true ]
0014   OP_POP
           stackframe: [ <closure <script>> ][ 0 ]
0015 OP_JUMP          15   -> 29
           stackframe: [ <closure <script>> ][ 0 ]
0029   OP_CONSTANT [5] 0
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ false ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ false ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ false ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ false ]
0103   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0104   OP_GET_GLOBAL [13] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0106   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ][ 0 ]
0108   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ][ 0 ][ 0 ]
0110   OP_MUL
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ][ 0 ]
0111   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0112   OP_SET_GLOBAL [12] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0114   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0115   OP_GET_GLOBAL [14] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0117   OP_PRINT
0
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0118 OP_LOOP          118  -> 43
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 0 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 1 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 1 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 1 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 1 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ false ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ false ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ false ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ false ]
0103   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0104   OP_GET_GLOBAL [13] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ]
0106   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ][ 0 ]
0108   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ][ 0 ][ 1 ]
0110   OP_MUL
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ][ 0 ]
0111   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ]
0112   OP_SET_GLOBAL [12] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ]
0114   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0115   OP_GET_GLOBAL [14] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 0 ]
0117   OP_PRINT
0
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0118 OP_LOOP          118  -> 43
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 1 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 1 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 1 ][ 2 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 2 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 2 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 2 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ false ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ false ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ false ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ false ]
0103   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0104   OP_GET_GLOBAL [13] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ]
0106   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ][ 0 ]
0108   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ][ 0 ][ 2 ]
0110   OP_MUL
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ][ 0 ]
0111   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ]
0112   OP_SET_GLOBAL [12] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ]
0114   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0115   OP_GET_GLOBAL [14] "sum"
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 0 ]
0117   OP_PRINT
0
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0118 OP_LOOP          118  -> 43
           stackframe: [ <closure <script>> ][ 0 ][ 2 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 2 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 2 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 2 ][ 3 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 3 ][ 3 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 3 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 0 ][ 3 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 0 ][ 3 ][ 3 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 0 ][ 3 ][ 3 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 0 ][ 3 ][ false ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 0 ][ 3 ][ false ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ 3 ]
0122   OP_POP
           stackframe: [ <closure <script>> ][ 0 ]
0123 OP_LOOP          123  -> 18
           stackframe: [ <closure <script>> ][ 0 ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0020   OP_CONSTANT [4] 1
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0023   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ 1 ]
0026 OP_LOOP          26   -> 6
           stackframe: [ <closure <script>> ][ 1 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0008   OP_CONSTANT [3] 3
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 3 ]
0010   OP_LESS
           stackframe: [ <closure <script>> ][ 1 ][ true ]
0011 OP_JUMP_IF_FALSE 11   -> 126
           stackframe: [ <closure <script>> ][ 1 ][ true ]
0014   OP_POP
           stackframe: [ <closure <script>> ][ 1 ]
0015 OP_JUMP          15   -> 29
           stackframe: [ <closure <script>> ][ 1 ]
0029   OP_CONSTANT [5] 0
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 1 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 1 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ true ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ true ]
0062   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0063   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ]
0065   OP_CONSTANT [9] 1
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ][ 1 ]
0067   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 1 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 1 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ false ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ false ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ false ]
0103   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0104   OP_GET_GLOBAL [13] "sum"
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ]
0106   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ][ 1 ]
0108   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ][ 1 ][ 0 ]
0110   OP_MUL
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ][ 0 ]
0111   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ]
0112   OP_SET_GLOBAL [12] "sum"
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ]
0114   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0115   OP_GET_GLOBAL [14] "sum"
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ]
0117   OP_PRINT
0
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0118 OP_LOOP          118  -> 43
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 0 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ][ 0 ][ 1 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ true ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ true ]
0062   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0063   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ]
0065   OP_CONSTANT [9] 1
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ][ 1 ]
0067   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ true ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ true ]
0071   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0072   OP_CONTINUE
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 2 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 1 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 1 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ true ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ true ]
0062   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0063   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0065   OP_CONSTANT [9] 1
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ][ 1 ]
0067   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 1 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 1 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ false ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ false ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ false ]
0103   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0104   OP_GET_GLOBAL [13] "sum"
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 0 ]
0106   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 0 ][ 1 ]
0108   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 0 ][ 1 ][ 2 ]
0110   OP_MUL
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 0 ][ 2 ]
0111   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0112   OP_SET_GLOBAL [12] "sum"
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0114   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0115   OP_GET_GLOBAL [14] "sum"
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0117   OP_PRINT
2
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0118 OP_LOOP          118  -> 43
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 3 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 3 ][ 3 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 3 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 1 ][ 3 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 1 ][ 3 ][ 3 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 1 ][ 3 ][ 3 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 1 ][ 3 ][ false ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 1 ][ 3 ][ false ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ 3 ]
0122   OP_POP
           stackframe: [ <closure <script>> ][ 1 ]
0123 OP_LOOP          123  -> 18
           stackframe: [ <closure <script>> ][ 1 ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0020   OP_CONSTANT [4] 1
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0023   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ 2 ]
0026 OP_LOOP          26   -> 6
           stackframe: [ <closure <script>> ][ 2 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0008   OP_CONSTANT [3] 3
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 3 ]
0010   OP_LESS
           stackframe: [ <closure <script>> ][ 2 ][ true ]
0011 OP_JUMP_IF_FALSE 11   -> 126
           stackframe: [ <closure <script>> ][ 2 ][ true ]
0014   OP_POP
           stackframe: [ <closure <script>> ][ 2 ]
0015 OP_JUMP          15   -> 29
           stackframe: [ <closure <script>> ][ 2 ]
0029   OP_CONSTANT [5] 0
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 0 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 0 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ false ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ true ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ true ]
0087   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0088   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 0 ]
0090   OP_CONSTANT [11] 2
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 0 ][ 2 ]
0092   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ false ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ false ]
0103   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0104   OP_GET_GLOBAL [13] "sum"
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ]
0106   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ][ 2 ]
0108   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ][ 2 ][ 0 ]
0110   OP_MUL
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ][ 0 ]
0111   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ]
0112   OP_SET_GLOBAL [12] "sum"
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ]
0114   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0115   OP_GET_GLOBAL [14] "sum"
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 2 ]
0117   OP_PRINT
2
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0118 OP_LOOP          118  -> 43
           stackframe: [ <closure <script>> ][ 2 ][ 0 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 0 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 0 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ][ 0 ][ 1 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 1 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 1 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 1 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ false ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ true ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ true ]
0087   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0088   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 1 ]
0090   OP_CONSTANT [11] 2
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 1 ][ 2 ]
0092   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ false ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ false ]
0103   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0104   OP_GET_GLOBAL [13] "sum"
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ]
0106   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ][ 2 ]
0108   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ][ 2 ][ 1 ]
0110   OP_MUL
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ][ 2 ]
0111   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 4 ]
0112   OP_SET_GLOBAL [12] "sum"
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 4 ]
0114   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0115   OP_GET_GLOBAL [14] "sum"
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 4 ]
0117   OP_PRINT
4
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0118 OP_LOOP          118  -> 43
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0043   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 1 ]
0045   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 1 ][ 1 ]
0047   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ][ 1 ][ 2 ]
0048   OP_SET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ]
0050   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0051 OP_LOOP          51   -> 31
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0031   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ]
0033   OP_CONSTANT [6] 3
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ][ 3 ]
0035   OP_LESS
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ true ]
0036 OP_JUMP_IF_FALSE 36   -> 121
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ true ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0040 OP_JUMP          40   -> 54
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0054   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ]
0056   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ][ 1 ]
0058   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ false ]
0059 OP_JUMP_IF_FALSE 59   -> 68
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ false ]
0068 OP_JUMP_IF_FALSE 68   -> 78
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ false ]
0078   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0079   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ]
0081   OP_CONSTANT [10] 2
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ][ 2 ]
0083   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ true ]
0084 OP_JUMP_IF_FALSE 84   -> 93
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ true ]
0087   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0088   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ]
0090   OP_CONSTANT [11] 2
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 2 ][ 2 ]
0092   OP_EQUAL
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ true ]
0093 OP_JUMP_IF_FALSE 93   -> 103
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ true ]
0096   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0097   OP_BREAK
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0122   OP_POP
           stackframe: [ <closure <script>> ][ 2 ]
0123 OP_LOOP          123  -> 18
           stackframe: [ <closure <script>> ][ 2 ]
0018   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0020   OP_CONSTANT [4] 1
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ][ 3 ]
0023   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 3 ][ 3 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ 3 ]
0026 OP_LOOP          26   -> 6
           stackframe: [ <closure <script>> ][ 3 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 3 ][ 3 ]
0008   OP_CONSTANT [3] 3
           stackframe: [ <closure <script>> ][ 3 ][ 3 ][ 3 ]
0010   OP_LESS
           stackframe: [ <closure <script>> ][ 3 ][ false ]
0011 OP_JUMP_IF_FALSE 11   -> 126
           stackframe: [ <closure <script>> ][ 3 ][ false ]
0126   OP_POP
           stackframe: [ <closure <script>> ][ 3 ]
0127   OP_POP
           stackframe: [ <closure <script>> ]
0128   OP_CONSTANT [16] 0
           stackframe: [ <closure <script>> ][ 0 ]
0130   OP_DEFINE_GLOBAL [15] "k"
allocate: 56
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 0 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 0 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 0 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 0 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 0 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ true ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ true ]
0161   OP_POP
           stackframe: [ <closure <script>> ]
0162   OP_GET_GLOBAL [26] "k"
           stackframe: [ <closure <script>> ][ 0 ]
0164   OP_CONSTANT [27] 1
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0166   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ]
0167   OP_SET_GLOBAL [25] "k"
           stackframe: [ <closure <script>> ][ 1 ]
0169   OP_POP
           stackframe: [ <closure <script>> ]
0170   OP_CONTINUE
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 1 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 1 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 1 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 1 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 1 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ false ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ false ]
0176   OP_POP
           stackframe: [ <closure <script>> ]
0177   OP_GET_GLOBAL [28] "k"
           stackframe: [ <closure <script>> ][ 1 ]
0179   OP_CONSTANT [29] 7
           stackframe: [ <closure <script>> ][ 1 ][ 7 ]
0181   OP_GREATER
           stackframe: [ <closure <script>> ][ false ]
0182 OP_JUMP_IF_FALSE 182  -> 192
           stackframe: [ <closure <script>> ][ false ]
0192   OP_POP
           stackframe: [ <closure <script>> ]
0193   OP_GET_GLOBAL [30] "k"
           stackframe: [ <closure <script>> ][ 1 ]
0195   OP_PRINT
1
           stackframe: [ <closure <script>> ]
0196   OP_GET_GLOBAL [32] "k"
           stackframe: [ <closure <script>> ][ 1 ]
0198   OP_CONSTANT [33] 1
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0200   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ]
0201   OP_SET_GLOBAL [31] "k"
           stackframe: [ <closure <script>> ][ 2 ]
0203   OP_POP
           stackframe: [ <closure <script>> ]
0204 OP_LOOP          204  -> 132
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 2 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 2 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 2 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 3 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 3 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 1 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 0 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ true ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ true ]
0161   OP_POP
           stackframe: [ <closure <script>> ]
0162   OP_GET_GLOBAL [26] "k"
           stackframe: [ <closure <script>> ][ 2 ]
0164   OP_CONSTANT [27] 1
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0166   OP_ADD
           stackframe: [ <closure <script>> ][ 3 ]
0167   OP_SET_GLOBAL [25] "k"
           stackframe: [ <closure <script>> ][ 3 ]
0169   OP_POP
           stackframe: [ <closure <script>> ]
0170   OP_CONTINUE
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 3 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 3 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 3 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 3 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 4 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 4 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 2 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 2 ][ 3 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 2 ][ 3 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 2 ][ 1 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 1 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ false ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ false ]
0176   OP_POP
           stackframe: [ <closure <script>> ]
0177   OP_GET_GLOBAL [28] "k"
           stackframe: [ <closure <script>> ][ 3 ]
0179   OP_CONSTANT [29] 7
           stackframe: [ <closure <script>> ][ 3 ][ 7 ]
0181   OP_GREATER
           stackframe: [ <closure <script>> ][ false ]
0182 OP_JUMP_IF_FALSE 182  -> 192
           stackframe: [ <closure <script>> ][ false ]
0192   OP_POP
           stackframe: [ <closure <script>> ]
0193   OP_GET_GLOBAL [30] "k"
           stackframe: [ <closure <script>> ][ 3 ]
0195   OP_PRINT
3
           stackframe: [ <closure <script>> ]
0196   OP_GET_GLOBAL [32] "k"
           stackframe: [ <closure <script>> ][ 3 ]
0198   OP_CONSTANT [33] 1
           stackframe: [ <closure <script>> ][ 3 ][ 1 ]
0200   OP_ADD
           stackframe: [ <closure <script>> ][ 4 ]
0201   OP_SET_GLOBAL [31] "k"
           stackframe: [ <closure <script>> ][ 4 ]
0203   OP_POP
           stackframe: [ <closure <script>> ]
0204 OP_LOOP          204  -> 132
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 4 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 4 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 4 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 4 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 5 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 5 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 2 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 2 ][ 4 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 2 ][ 4 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 0 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ true ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ true ]
0161   OP_POP
           stackframe: [ <closure <script>> ]
0162   OP_GET_GLOBAL [26] "k"
           stackframe: [ <closure <script>> ][ 4 ]
0164   OP_CONSTANT [27] 1
           stackframe: [ <closure <script>> ][ 4 ][ 1 ]
0166   OP_ADD
           stackframe: [ <closure <script>> ][ 5 ]
0167   OP_SET_GLOBAL [25] "k"
           stackframe: [ <closure <script>> ][ 5 ]
0169   OP_POP
           stackframe: [ <closure <script>> ]
0170   OP_CONTINUE
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 5 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 5 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 5 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 5 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 6 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 6 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 3 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 3 ][ 5 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 3 ][ 5 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 3 ][ 2 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 1 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ false ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ false ]
0176   OP_POP
           stackframe: [ <closure <script>> ]
0177   OP_GET_GLOBAL [28] "k"
           stackframe: [ <closure <script>> ][ 5 ]
0179   OP_CONSTANT [29] 7
           stackframe: [ <closure <script>> ][ 5 ][ 7 ]
0181   OP_GREATER
           stackframe: [ <closure <script>> ][ false ]
0182 OP_JUMP_IF_FALSE 182  -> 192
           stackframe: [ <closure <script>> ][ false ]
0192   OP_POP
           stackframe: [ <closure <script>> ]
0193   OP_GET_GLOBAL [30] "k"
           stackframe: [ <closure <script>> ][ 5 ]
0195   OP_PRINT
5
           stackframe: [ <closure <script>> ]
0196   OP_GET_GLOBAL [32] "k"
           stackframe: [ <closure <script>> ][ 5 ]
0198   OP_CONSTANT [33] 1
           stackframe: [ <closure <script>> ][ 5 ][ 1 ]
0200   OP_ADD
           stackframe: [ <closure <script>> ][ 6 ]
0201   OP_SET_GLOBAL [31] "k"
           stackframe: [ <closure <script>> ][ 6 ]
0203   OP_POP
           stackframe: [ <closure <script>> ]
0204 OP_LOOP          204  -> 132
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 6 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 6 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 6 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 6 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 7 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 7 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 3 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 3 ][ 6 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 3 ][ 6 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 3 ][ 3 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 0 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ true ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ true ]
0161   OP_POP
           stackframe: [ <closure <script>> ]
0162   OP_GET_GLOBAL [26] "k"
           stackframe: [ <closure <script>> ][ 6 ]
0164   OP_CONSTANT [27] 1
           stackframe: [ <closure <script>> ][ 6 ][ 1 ]
0166   OP_ADD
           stackframe: [ <closure <script>> ][ 7 ]
0167   OP_SET_GLOBAL [25] "k"
           stackframe: [ <closure <script>> ][ 7 ]
0169   OP_POP
           stackframe: [ <closure <script>> ]
0170   OP_CONTINUE
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 7 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 7 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 7 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 7 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 8 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 8 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 4 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 4 ][ 7 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 4 ][ 7 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 4 ][ 3 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 1 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ false ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ false ]
0176   OP_POP
           stackframe: [ <closure <script>> ]
0177   OP_GET_GLOBAL [28] "k"
           stackframe: [ <closure <script>> ][ 7 ]
0179   OP_CONSTANT [29] 7
           stackframe: [ <closure <script>> ][ 7 ][ 7 ]
0181   OP_GREATER
           stackframe: [ <closure <script>> ][ false ]
0182 OP_JUMP_IF_FALSE 182  -> 192
           stackframe: [ <closure <script>> ][ false ]
0192   OP_POP
           stackframe: [ <closure <script>> ]
0193   OP_GET_GLOBAL [30] "k"
           stackframe: [ <closure <script>> ][ 7 ]
0195   OP_PRINT
7
           stackframe: [ <closure <script>> ]
0196   OP_GET_GLOBAL [32] "k"
           stackframe: [ <closure <script>> ][ 7 ]
0198   OP_CONSTANT [33] 1
           stackframe: [ <closure <script>> ][ 7 ][ 1 ]
0200   OP_ADD
           stackframe: [ <closure <script>> ][ 8 ]
0201   OP_SET_GLOBAL [31] "k"
           stackframe: [ <closure <script>> ][ 8 ]
0203   OP_POP
           stackframe: [ <closure <script>> ]
0204 OP_LOOP          204  -> 132
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 8 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 8 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 8 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 8 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 9 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 9 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 4 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 4 ][ 8 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 4 ][ 8 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 4 ][ 4 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 0 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ true ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ true ]
0161   OP_POP
           stackframe: [ <closure <script>> ]
0162   OP_GET_GLOBAL [26] "k"
           stackframe: [ <closure <script>> ][ 8 ]
0164   OP_CONSTANT [27] 1
           stackframe: [ <closure <script>> ][ 8 ][ 1 ]
0166   OP_ADD
           stackframe: [ <closure <script>> ][ 9 ]
0167   OP_SET_GLOBAL [25] "k"
           stackframe: [ <closure <script>> ][ 9 ]
0169   OP_POP
           stackframe: [ <closure <script>> ]
0170   OP_CONTINUE
           stackframe: [ <closure <script>> ]
0132   OP_GET_GLOBAL [17] "k"
           stackframe: [ <closure <script>> ][ 9 ]
0134   OP_CONSTANT [18] 10
           stackframe: [ <closure <script>> ][ 9 ][ 10 ]
0136   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0137 OP_JUMP_IF_FALSE 137  -> 207
           stackframe: [ <closure <script>> ][ true ]
0140   OP_POP
           stackframe: [ <closure <script>> ]
0141   OP_GET_GLOBAL [19] "k"
           stackframe: [ <closure <script>> ][ 9 ]
0143   OP_CONSTANT [20] 1
           stackframe: [ <closure <script>> ][ 9 ][ 1 ]
0145   OP_ADD
           stackframe: [ <closure <script>> ][ 10 ]
0146   OP_CONSTANT [21] 2
           stackframe: [ <closure <script>> ][ 10 ][ 2 ]
0148   OP_DIV
           stackframe: [ <closure <script>> ][ 5 ]
0149   OP_GET_GLOBAL [22] "k"
           stackframe: [ <closure <script>> ][ 5 ][ 9 ]
0151   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ 5 ][ 9 ][ 2 ]
0153   OP_DIV
           stackframe: [ <closure <script>> ][ 5 ][ 4 ]
0154   OP_SUB
           stackframe: [ <closure <script>> ][ 1 ]
0155   OP_CONSTANT [24] 0
           stackframe: [ <closure <script>> ][ 1 ][ 0 ]
0157   OP_EQUAL
           stackframe: [ <closure <script>> ][ false ]
0158 OP_JUMP_IF_FALSE 158  -> 176
           stackframe: [ <closure <script>> ][ false ]
0176   OP_POP
           stackframe: [ <closure <script>> ]
0177   OP_GET_GLOBAL [28] "k"
           stackframe: [ <closure <script>> ][ 9 ]
0179   OP_CONSTANT [29] 7
           stackframe: [ <closure <script>> ][ 9 ][ 7 ]
0181   OP_GREATER
           stackframe: [ <closure <script>> ][ true ]
0182 OP_JUMP_IF_FALSE 182  -> 192
           stackframe: [ <closure <script>> ][ true ]
0185   OP_POP
           stackframe: [ <closure <script>> ]
0186   OP_BREAK
           stackframe: [ <closure <script>> ]
0208   OP_GET_GLOBAL [34] "sum"
           stackframe: [ <closure <script>> ][ 4 ]
0210   OP_CONSTANT [35] 5
           stackframe: [ <closure <script>> ][ 4 ][ 5 ]
0212   OP_GREATER
           stackframe: [ <closure <script>> ][ false ]
0213 OP_JUMP_IF_FALSE 213  -> 223
           stackframe: [ <closure <script>> ][ false ]
0223   OP_POP
           stackframe: [ <closure <script>> ]
0224   OP_GET_GLOBAL [37] "sum"
           stackframe: [ <closure <script>> ][ 4 ]
0226   OP_CONSTANT [38] 5
           stackframe: [ <closure <script>> ][ 4 ][ 5 ]
0228   OP_EQUAL
           stackframe: [ <closure <script>> ][ false ]
0229 OP_JUMP_IF_FALSE 229  -> 239
           stackframe: [ <closure <script>> ][ false ]
0239   OP_POP
           stackframe: [ <closure <script>> ]
0240   OP_CONSTANT [40] "Sum is less than 5"
           stackframe: [ <closure <script>> ][ "Sum is less than 5" ]
0242   OP_PRINT
"Sum is less than 5"
           stackframe: [ <closure <script>> ]
0243   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0244   OP_RETURN
