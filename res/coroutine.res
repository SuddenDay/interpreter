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
allocate: 136
allocate: 80
allocate: 31
allocate: 40
allocate: 16
allocate: 80
allocate: 40
allocate: 32
=== "a"===
allocate: 32
allocate: 80
allocate: 40
allocate: 64
allocate: 80
allocate: 40
allocate: 128
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 256
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 512
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 136
allocate: 16
allocate: 32
allocate: 80
allocate: 40
allocate: 64
allocate: 80
allocate: 40
=== "worker"===
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 1024
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 31
allocate: 40
allocate: 80
allocate: 31
allocate: 40
allocate: 80
allocate: 40
=== <script> ===
allocate: 80
allocate: 160
           stackframe: [ <closure <script>> ]
0000   OP_CLOSURE [1] <fn "a">
allocate: 80
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ]
0002   OP_DEFINE_GLOBAL [0] "a"
allocate: 56
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [3] "a"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ]
0006   OP_CONSTANT [4] "Co1"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ][ "Co1" ]
0008   OP_CONSTANT [5] "first is here"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ][ "Co1" ][ "first is here" ]
0010   OP_CREATE_COROUTINE
allocate: 160
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0012   OP_DEFINE_GLOBAL [2] "co1"
allocate: 56
           stackframe: [ <closure <script>> ]
0014   OP_GET_GLOBAL [7] "a"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ]
0016   OP_CONSTANT [8] "Co2"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ][ "Co2" ]
0018   OP_CONSTANT [9] "second is here"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ][ "Co2" ][ "second is here" ]
0020   OP_CREATE_COROUTINE
allocate: 160
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0022   OP_DEFINE_GLOBAL [6] "co2"
allocate: 56
           stackframe: [ <closure <script>> ]
0024   OP_GET_GLOBAL [10] "co2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0026   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Co2" ][ "second is here" ]
0000   OP_CONSTANT [0] "this is a function"
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ][ "this is a function" ]
0004   OP_PRINT
"this is a function"
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ]
0005   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ][ "Co2" ]
0007   OP_PRINT
"Co2"
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ]
0008   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0027   OP_CONSTANT [11] "1"
           stackframe: [ <closure <script>> ][ "1" ]
0029   OP_PRINT
"1"
           stackframe: [ <closure <script>> ]
0030   OP_GET_GLOBAL [12] "co1"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0032   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Co1" ][ "first is here" ]
0000   OP_CONSTANT [0] "this is a function"
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ][ "this is a function" ]
0004   OP_PRINT
"this is a function"
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ]
0005   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ][ "Co1" ]
0007   OP_PRINT
"Co1"
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ]
0008   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0033   OP_CONSTANT [13] "2"
           stackframe: [ <closure <script>> ][ "2" ]
0035   OP_PRINT
"2"
           stackframe: [ <closure <script>> ]
0036   OP_GET_GLOBAL [14] "co2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0038   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ]
0009   OP_CONSTANT [1] "resume"
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ][ "resume" ]
0011   OP_PRINT
"resume"
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ]
0012   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0039   OP_CONSTANT [15] "3"
           stackframe: [ <closure <script>> ][ "3" ]
0041   OP_PRINT
"3"
           stackframe: [ <closure <script>> ]
0042   OP_GET_GLOBAL [16] "co1"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0044   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ]
0009   OP_CONSTANT [1] "resume"
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ][ "resume" ]
0011   OP_PRINT
"resume"
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ]
0012   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0045   OP_CONSTANT [17] "4"
           stackframe: [ <closure <script>> ][ "4" ]
0047   OP_PRINT
"4"
           stackframe: [ <closure <script>> ]
0048   OP_GET_GLOBAL [18] "co2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0050   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ]
0013   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ][ "second is here" ]
0015   OP_PRINT
"second is here"
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ]
0016   OP_NIL
           stackframe: [ nil ][ "Co2" ][ "second is here" ][ "this is a function" ][ nil ]
0017   OP_RETURN
           stackframe: [ <closure <script>> ]
0051   OP_CONSTANT [19] "5"
           stackframe: [ <closure <script>> ][ "5" ]
0053   OP_PRINT
"5"
           stackframe: [ <closure <script>> ]
0054   OP_GET_GLOBAL [20] "co1"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "a">>> ]
0056   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ]
0013   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ][ "first is here" ]
0015   OP_PRINT
"first is here"
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ]
0016   OP_NIL
           stackframe: [ nil ][ "Co1" ][ "first is here" ][ "this is a function" ][ nil ]
0017   OP_RETURN
           stackframe: [ <closure <script>> ]
0057   OP_CONSTANT [21] "6"
           stackframe: [ <closure <script>> ][ "6" ]
0059   OP_PRINT
"6"
           stackframe: [ <closure <script>> ]
0060   OP_CLOSURE [23] <fn "worker">
allocate: 80
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ]
0062   OP_DEFINE_GLOBAL [22] "worker"
allocate: 56
           stackframe: [ <closure <script>> ]
0064   OP_GET_GLOBAL [25] "worker"
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ]
0066   OP_CONSTANT [26] "Worker A"
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ][ "Worker A" ]
0068   OP_CONSTANT [27] 3
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ][ "Worker A" ][ 3 ]
0070   OP_CREATE_COROUTINE
allocate: 160
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0072   OP_DEFINE_GLOBAL [24] "w1"
allocate: 56
           stackframe: [ <closure <script>> ]
0074   OP_GET_GLOBAL [29] "worker"
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ]
0076   OP_CONSTANT [30] "Worker B"
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ][ "Worker B" ]
0078   OP_CONSTANT [31] 5
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ][ "Worker B" ][ 5 ]
0080   OP_CREATE_COROUTINE
allocate: 160
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0082   OP_DEFINE_GLOBAL [28] "w2"
allocate: 56
           stackframe: [ <closure <script>> ]
0084   OP_GET_GLOBAL [33] "worker"
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ]
0086   OP_CONSTANT [34] "Worker C"
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ][ "Worker C" ]
0088   OP_CONSTANT [35] 2
           stackframe: [ <closure <script>> ][ <closure <fn "worker">> ][ "Worker C" ][ 2 ]
0090   OP_CREATE_COROUTINE
allocate: 160
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0092   OP_DEFINE_GLOBAL [32] "w3"
allocate: 56
           stackframe: [ <closure <script>> ]
0094   OP_CONSTANT [36] "=== Start ==="
           stackframe: [ <closure <script>> ][ "=== Start ===" ]
0096   OP_PRINT
"=== Start ==="
           stackframe: [ <closure <script>> ]
0097   OP_GET_GLOBAL [37] "w1"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0099   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker A" ][ 3 ]
0000   OP_CONSTANT [0] 1
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ 1 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ 1 ][ 3 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ "Worker A" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ "Worker A" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
allocate: 40
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ "Worker A - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ "Worker A - step " ][ 1 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ "Worker A - step 1" ]
0034   OP_PRINT
"Worker A - step 1"
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0100   OP_GET_GLOBAL [38] "w2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0102   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker B" ][ 5 ]
0000   OP_CONSTANT [0] 1
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ 1 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ 1 ][ 5 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ "Worker B" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ "Worker B" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ "Worker B - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ "Worker B - step " ][ 1 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ "Worker B - step 1" ]
0034   OP_PRINT
"Worker B - step 1"
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0103   OP_GET_GLOBAL [39] "w1"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0105   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ 1 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ 1 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 1 ][ 2 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ 2 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ 2 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ 2 ][ 3 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ "Worker A" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ "Worker A" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ "Worker A - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ "Worker A - step " ][ 2 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ "Worker A - step 2" ]
0034   OP_PRINT
"Worker A - step 2"
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0106   OP_GET_GLOBAL [40] "w3"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0108   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker C" ][ 2 ]
0000   OP_CONSTANT [0] 1
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ 1 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ 1 ][ 2 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ "Worker C" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ "Worker C" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ "Worker C - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ "Worker C - step " ][ 1 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ "Worker C - step 1" ]
0034   OP_PRINT
"Worker C - step 1"
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0109   OP_CONSTANT [41] "Main: first pause"
           stackframe: [ <closure <script>> ][ "Main: first pause" ]
0111   OP_PRINT
"Main: first pause"
           stackframe: [ <closure <script>> ]
0112   OP_GET_GLOBAL [42] "w2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0114   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ 1 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ 1 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 1 ][ 2 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ 2 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ 2 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ 2 ][ 5 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ "Worker B" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ "Worker B" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ "Worker B - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ "Worker B - step " ][ 2 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ "Worker B - step 2" ]
0034   OP_PRINT
"Worker B - step 2"
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0115   OP_GET_GLOBAL [43] "w2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0117   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ 2 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ 2 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 2 ][ 3 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ 3 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ 3 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ 3 ][ 5 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ "Worker B" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ "Worker B" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ "Worker B - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ "Worker B - step " ][ 3 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ "Worker B - step 3" ]
0034   OP_PRINT
"Worker B - step 3"
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0118   OP_GET_GLOBAL [44] "w3"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0120   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ 1 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ 1 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 1 ][ 2 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ 2 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ 2 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ 2 ][ 2 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ "Worker C" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ "Worker C" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ "Worker C - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ "Worker C - step " ][ 2 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ][ "Worker C - step 2" ]
0034   OP_PRINT
"Worker C - step 2"
           stackframe: [ nil ][ "Worker C" ][ 2 ][ 2 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0121   OP_CONSTANT [45] "Main: second pause"
           stackframe: [ <closure <script>> ][ "Main: second pause" ]
0123   OP_PRINT
"Main: second pause"
           stackframe: [ <closure <script>> ]
0124   OP_GET_GLOBAL [46] "w1"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0126   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ 2 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ 2 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 2 ][ 3 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ 3 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ 3 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ 3 ][ 3 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ "Worker A" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ "Worker A" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ "Worker A - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ "Worker A - step " ][ 3 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ "Worker A - step 3" ]
0034   OP_PRINT
"Worker A - step 3"
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0127   OP_GET_GLOBAL [47] "w1"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0129   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ 3 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ 3 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 3 ][ 4 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ][ 4 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ][ 4 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ][ 4 ][ 3 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ][ true ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ][ false ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ][ false ]
0039   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ][ 4 ]
0040   OP_POP
           stackframe: [ nil ][ "Worker A" ][ 3 ]
0041   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker A" ][ 3 ][ "Worker A" ]
0043   OP_CONSTANT [3] " - finished!"
           stackframe: [ nil ][ "Worker A" ][ 3 ][ "Worker A" ][ " - finished!" ]
0045   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker A" ][ 3 ][ "Worker A - finished!" ]
0046   OP_PRINT
"Worker A - finished!"
           stackframe: [ nil ][ "Worker A" ][ 3 ]
0047   OP_NIL
           stackframe: [ nil ][ "Worker A" ][ 3 ][ nil ]
0048   OP_RETURN
           stackframe: [ <closure <script>> ]
0130   OP_GET_GLOBAL [48] "w2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0132   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ 3 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ 3 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 3 ][ 4 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ 4 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ 4 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ 4 ][ 5 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ "Worker B" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ "Worker B" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ "Worker B - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ "Worker B - step " ][ 4 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ "Worker B - step 4" ]
0034   OP_PRINT
"Worker B - step 4"
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0133   OP_GET_GLOBAL [49] "w2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0135   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ 4 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ 4 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 4 ][ 5 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ 5 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ 5 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ 5 ][ 5 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ false ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ true ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ true ]
0011   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ]
0012 OP_JUMP          12   -> 26
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ]
0026   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ "Worker B" ]
0028   OP_CONSTANT [2] " - step "
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ "Worker B" ][ " - step " ]
0030   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ "Worker B - step " ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ "Worker B - step " ][ 5 ]
0033   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ "Worker B - step 5" ]
0034   OP_PRINT
"Worker B - step 5"
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ]
0035   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0136   OP_GET_GLOBAL [50] "w2"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "worker">>> ]
0138   OP_RESUME_COROUTINE
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ]
0036 OP_LOOP          36   -> 15
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ]
0015   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ 5 ]
0017   OP_CONSTANT [1] 1
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ 5 ][ 1 ]
0019   OP_ADD
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 5 ][ 6 ]
0020   OP_SET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ][ 6 ]
0022   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ]
0023 OP_LOOP          23   -> 2
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ]
0002   OP_GET_LOCAL [3] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ][ 6 ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ][ 6 ][ 5 ]
0006   OP_GREATER
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ][ true ]
0007   OP_NOT
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ][ false ]
0008 OP_JUMP_IF_FALSE 8    -> 39
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ][ false ]
0039   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ][ 6 ]
0040   OP_POP
           stackframe: [ nil ][ "Worker B" ][ 5 ]
0041   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ "Worker B" ][ 5 ][ "Worker B" ]
0043   OP_CONSTANT [3] " - finished!"
           stackframe: [ nil ][ "Worker B" ][ 5 ][ "Worker B" ][ " - finished!" ]
0045   OP_ADD
allocate: 80
allocate: 31
gc collect 151 bytes
allocate: 40
           stackframe: [ nil ][ "Worker B" ][ 5 ][ "Worker B - finished!" ]
0046   OP_PRINT
"Worker B - finished!"
           stackframe: [ nil ][ "Worker B" ][ 5 ]
0047   OP_NIL
           stackframe: [ nil ][ "Worker B" ][ 5 ][ nil ]
0048   OP_RETURN
           stackframe: [ <closure <script>> ]
0139   OP_CONSTANT [51] "=== End ==="
           stackframe: [ <closure <script>> ][ "=== End ===" ]
0141   OP_PRINT
"=== End ==="
           stackframe: [ <closure <script>> ]
0142   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0143   OP_RETURN
