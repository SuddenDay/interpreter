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
allocate: 80
allocate: 40
allocate: 128
allocate: 256
allocate: 80
allocate: 35
allocate: 40
allocate: 80
allocate: 40
allocate: 136
allocate: 16
allocate: 32
allocate: 64
=== "createLargeList"===
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 512
allocate: 136
allocate: 16
allocate: 136
allocate: 80
allocate: 40
allocate: 16
=== "counter"===
allocate: 32
=== "makeCounter"===
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 80
allocate: 40
allocate: 136
allocate: 80
allocate: 40
allocate: 16
=== "init"===
allocate: 80
allocate: 40
allocate: 136
allocate: 80
allocate: 40
allocate: 16
allocate: 32
=== "greet"===
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
allocate: 40
allocate: 136
allocate: 80
allocate: 31
allocate: 40
allocate: 16
allocate: 32
allocate: 64
allocate: 128
allocate: 80
allocate: 40
allocate: 80
allocate: 31
allocate: 40
allocate: 80
allocate: 40
allocate: 40
allocate: 80
allocate: 31
allocate: 40
allocate: 256
=== "memoryConsumer"===
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
allocate: 80
allocate: 40
=== <script> ===
allocate: 80
allocate: 160
           stackframe: [ <closure <script>> ]
0000   OP_CONSTANT [1] 0
           stackframe: [ <closure <script>> ][ 0 ]
0002   OP_DEFINE_GLOBAL [0] "i"
allocate: 56
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 0 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 0 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 0 ]
0017   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ "Hello 0" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 0" ][ 0 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 0" ][ 0 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 0" ][ 1 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 0" ][ 1 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 0" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 1 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 1 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 1 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 1" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 1" ][ 1 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 1" ][ 1 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 1" ][ 2 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 1" ][ 2 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 1" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 2 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 2 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 2 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 2" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 2" ][ 2 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 2" ][ 2 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 2" ][ 3 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 2" ][ 3 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 2" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 3 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 3 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 3 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 3" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 3" ][ 3 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 3" ][ 3 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 3" ][ 4 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 3" ][ 4 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 3" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 4 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 4 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 4 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 4" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 4" ][ 4 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 4" ][ 4 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 4" ][ 5 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 4" ][ 5 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 4" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 5 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 5 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 5 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 5" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 5" ][ 5 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 5" ][ 5 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 5" ][ 6 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 5" ][ 6 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 5" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 6 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 6 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 6 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 6" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 6" ][ 6 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 6" ][ 6 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 6" ][ 7 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 6" ][ 7 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 6" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 7 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 7 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 7 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 7" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 7" ][ 7 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 7" ][ 7 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 7" ][ 8 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 7" ][ 8 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 7" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 8 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 8 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 8 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 8" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 8" ][ 8 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 8" ][ 8 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 8" ][ 9 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 8" ][ 9 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 8" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 9 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 9 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [4] "Hello "
           stackframe: [ <closure <script>> ][ "Hello " ]
0015   OP_GET_GLOBAL [5] "i"
           stackframe: [ <closure <script>> ][ "Hello " ][ 9 ]
0017   OP_ADD
allocate: 80
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Hello 9" ]
0018   OP_GET_GLOBAL [7] "i"
           stackframe: [ <closure <script>> ][ "Hello 9" ][ 9 ]
0020   OP_CONSTANT [8] 1
           stackframe: [ <closure <script>> ][ "Hello 9" ][ 9 ][ 1 ]
0022   OP_ADD
           stackframe: [ <closure <script>> ][ "Hello 9" ][ 10 ]
0023   OP_SET_GLOBAL [6] "i"
           stackframe: [ <closure <script>> ][ "Hello 9" ][ 10 ]
0025   OP_POP
           stackframe: [ <closure <script>> ][ "Hello 9" ]
0026   OP_POP
           stackframe: [ <closure <script>> ]
0027 OP_LOOP          27   -> 4
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [2] "i"
           stackframe: [ <closure <script>> ][ 10 ]
0006   OP_CONSTANT [3] 10
           stackframe: [ <closure <script>> ][ 10 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ false ]
0009 OP_JUMP_IF_FALSE 9    -> 30
           stackframe: [ <closure <script>> ][ false ]
0030   OP_POP
           stackframe: [ <closure <script>> ]
0031   OP_CONSTANT [9] "Done creating short-lived objects!"
           stackframe: [ <closure <script>> ][ "Done creating short-lived objects!" ]
0033   OP_PRINT
"Done creating short-lived objects!"
           stackframe: [ <closure <script>> ]
0034   OP_CLOSURE [11] <fn "createLargeList">
allocate: 80
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ]
0036   OP_DEFINE_GLOBAL [10] "createLargeList"
allocate: 56
gc collect 120 bytes
           stackframe: [ <closure <script>> ]
0038   OP_GET_GLOBAL [12] "createLargeList"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ]
0040   OP_CONSTANT [13] 10
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ]
0042   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ]
0000   OP_ARRAY size: 0
allocate: 72
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ]
0002   OP_CONSTANT [0] 0
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ][ 0 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ][ 0 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ][ <native push> ][ [] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [] ][ 0 ][ <native push> ][ [] ][ 0 ]
0033   OP_CALL [2] 
allocate: 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 0 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 0 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 0 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 0 ][ 0 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 0 ][ 0 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 0 ][ 1 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ 1 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ 1 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ 1 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ <native push> ][ [0] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0] ][ 1 ][ <native push> ][ [0] ][ 1 ]
0033   OP_CALL [2] 
allocate: 32
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 1 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 1 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 1 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 1 ][ 1 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 1 ][ 1 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 1 ][ 2 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ 2 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ 2 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ 2 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ <native push> ][ [0, 1] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1] ][ 2 ][ <native push> ][ [0, 1] ][ 2 ]
0033   OP_CALL [2] 
allocate: 64
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 2 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 2 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 2 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 2 ][ 2 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 2 ][ 2 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 2 ][ 3 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ 3 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ 3 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ 3 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ <native push> ][ [0, 1, 2] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2] ][ 3 ][ <native push> ][ [0, 1, 2] ][ 3 ]
0033   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 3 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 3 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 3 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 3 ][ 3 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 3 ][ 3 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 3 ][ 4 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ 4 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ 4 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ 4 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ <native push> ][ [0, 1, 2, 3] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3] ][ 4 ][ <native push> ][ [0, 1, 2, 3] ][ 4 ]
0033   OP_CALL [2] 
allocate: 128
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 4 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 4 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 4 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 4 ][ 4 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 4 ][ 4 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 4 ][ 5 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ 5 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ 5 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ 5 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ <native push> ][ [0, 1, 2, 3, 4] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4] ][ 5 ][ <native push> ][ [0, 1, 2, 3, 4] ][ 5 ]
0033   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 5 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 5 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 5 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 5 ][ 5 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 5 ][ 5 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 5 ][ 6 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ 6 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ 6 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ 6 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ <native push> ][ [0, 1, 2, 3, 4, 5] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5] ][ 6 ][ <native push> ][ [0, 1, 2, 3, 4, 5] ][ 6 ]
0033   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 6 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 6 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 6 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 6 ][ 6 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 6 ][ 6 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 6 ][ 7 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ 7 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ 7 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ 7 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ <native push> ][ [0, 1, 2, 3, 4, 5, 6] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ][ <native push> ][ [0, 1, 2, 3, 4, 5, 6] ][ 7 ]
0033   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 7 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 7 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 7 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 7 ][ 7 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 7 ][ 7 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 7 ][ 8 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ 8 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ 8 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ 8 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ <native push> ][ [0, 1, 2, 3, 4, 5, 6, 7] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ][ <native push> ][ [0, 1, 2, 3, 4, 5, 6, 7] ][ 8 ]
0033   OP_CALL [2] 
allocate: 256
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 8 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 8 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 8 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 8 ][ 8 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 8 ][ 8 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 8 ][ 9 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ 9 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ 9 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ 9 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ true ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ true ]
0012   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ]
0013 OP_JUMP          13   -> 27
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ]
0027   OP_GET_GLOBAL [2] "push"
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ <native push> ]
0029   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ <native push> ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ]
0031   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ][ <native push> ][ [0, 1, 2, 3, 4, 5, 6, 7, 8] ][ 9 ]
0033   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 9 ][ nil ]
0035   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 9 ]
0036 OP_LOOP          36   -> 16
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 9 ]
0016   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 9 ][ 9 ]
0018   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 9 ][ 9 ][ 1 ]
0020   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 9 ][ 10 ]
0021   OP_SET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ][ 10 ]
0023   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ]
0024 OP_LOOP          24   -> 4
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ]
0004   OP_GET_LOCAL [3] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ][ 10 ]
0006   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ][ 10 ][ 10 ]
0008   OP_LESS
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ][ false ]
0009 OP_JUMP_IF_FALSE 9    -> 39
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ][ false ]
0039   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ 10 ]
0040   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ]
0041   OP_NIL
           stackframe: [ <closure <script>> ][ <closure <fn "createLargeList">> ][ 10 ][ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] ][ nil ]
0042   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0044   OP_POP
           stackframe: [ <closure <script>> ]
0045   OP_CONSTANT [14] "end "
           stackframe: [ <closure <script>> ][ "end " ]
0047   OP_CONSTANT [15] "scope."
           stackframe: [ <closure <script>> ][ "end " ][ "scope." ]
0049   OP_ADD
allocate: 80
gc collect 328 bytes
allocate: 40
           stackframe: [ <closure <script>> ][ "end scope." ]
0050   OP_PRINT
"end scope."
           stackframe: [ <closure <script>> ]
0051   OP_CLOSURE [17] <fn "makeCounter">
allocate: 80
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ]
0053   OP_DEFINE_GLOBAL [16] "makeCounter"
allocate: 56
gc collect 120 bytes
           stackframe: [ <closure <script>> ]
0055   OP_GET_GLOBAL [19] "makeCounter"
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ]
0057   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ]
0000   OP_CONSTANT [0] 0
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ][ 0 ]
0002   OP_CLOSURE [1] <fn "counter">
allocate: 80
allocate: 8
allocate: 80
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ][ 0 ][ <closure <fn "counter">> ]
0006   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ][ 0 ][ <closure <fn "counter">> ][ <closure <fn "counter">> ]
0008   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0059   OP_DEFINE_GLOBAL [18] "c"
allocate: 56
           stackframe: [ <closure <script>> ]
0061   OP_GET_GLOBAL [20] "c"
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0063   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0000   OP_GET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 0 ]
0002   OP_CONSTANT [0] 1
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 0 ][ 1 ]
0004   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 1 ]
0005   OP_SET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 1 ]
0007   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0008   OP_GET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 1 ]
0010   OP_RETURN
           stackframe: [ <closure <script>> ][ 1 ]
0065   OP_PRINT
1
           stackframe: [ <closure <script>> ]
0066   OP_GET_GLOBAL [21] "c"
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0068   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0000   OP_GET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 1 ]
0002   OP_CONSTANT [0] 1
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 1 ][ 1 ]
0004   OP_ADD
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 2 ]
0005   OP_SET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 2 ]
0007   OP_POP
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0008   OP_GET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ][ 2 ]
0010   OP_RETURN
           stackframe: [ <closure <script>> ][ 2 ]
0070   OP_PRINT
2
           stackframe: [ <closure <script>> ]
0071   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0072   OP_SET_GLOBAL [22] "c"
           stackframe: [ <closure <script>> ][ nil ]
0074   OP_POP
           stackframe: [ <closure <script>> ]
0075   OP_CONSTANT [23] "c now is "
           stackframe: [ <closure <script>> ][ "c now is " ]
0077   OP_CONSTANT [24] "collectible."
           stackframe: [ <closure <script>> ][ "c now is " ][ "collectible." ]
0079   OP_ADD
allocate: 80
gc collect 168 bytes
allocate: 31
allocate: 40
           stackframe: [ <closure <script>> ][ "c now is collectible." ]
0080   OP_PRINT
"c now is collectible."
           stackframe: [ <closure <script>> ]
0081   OP_CLASS [25] "Person"
allocate: 104
           stackframe: [ <closure <script>> ][ <class "Person"> ]
0083   OP_DEFINE_GLOBAL [25] "Person"
allocate: 56
gc collect 151 bytes
           stackframe: [ <closure <script>> ]
0085   OP_GET_GLOBAL [26] "Person"
           stackframe: [ <closure <script>> ][ <class "Person"> ]
0087   OP_CLOSURE [28] <fn "init">
allocate: 80
           stackframe: [ <closure <script>> ][ <class "Person"> ][ <closure <fn "init">> ]
0089   OP_METHOD [27] "init"
allocate: 56
           stackframe: [ <closure <script>> ][ <class "Person"> ]
0091   OP_CLOSURE [30] <fn "greet">
allocate: 80
           stackframe: [ <closure <script>> ][ <class "Person"> ][ <closure <fn "greet">> ]
0093   OP_METHOD [29] "greet"
allocate: 56
           stackframe: [ <closure <script>> ][ <class "Person"> ]
0095   OP_POP
           stackframe: [ <closure <script>> ]
0096   OP_ARRAY size: 0
allocate: 72
           stackframe: [ <closure <script>> ][ [] ]
0098   OP_DEFINE_GLOBAL [31] "people"
allocate: 56
           stackframe: [ <closure <script>> ]
0100   OP_CONSTANT [32] 0
           stackframe: [ <closure <script>> ][ 0 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 0 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 0 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 0 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 0 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <class "Person"> ][ "Person #" ][ 0 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <class "Person"> ][ "Person #0" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <instance <class "Person">> ][ "Person #0" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <instance <class "Person">> ][ "Person #0" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <instance <class "Person">> ][ "Person #0" ][ <instance <class "Person">> ][ "Person #0" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <instance <class "Person">> ][ "Person #0" ][ "Person #0" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <instance <class "Person">> ][ "Person #0" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <instance <class "Person">> ][ "Person #0" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 0 ][ <native push> ][ [] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
allocate: 16
           stackframe: [ <closure <script>> ][ 0 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 0 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 0 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 0 ][ 0 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 0 ][ 0 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 0 ][ 1 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 1 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 1 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 1 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 1 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 1 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 1 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 1 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <class "Person"> ][ "Person #1" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #1" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #1" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #1" ][ <instance <class "Person">> ][ "Person #1" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #1" ][ "Person #1" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #1" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #1" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 1 ][ <native push> ][ [<instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
allocate: 32
           stackframe: [ <closure <script>> ][ 1 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 1 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 1 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 1 ][ 1 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 1 ][ 1 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 2 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 2 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 2 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 2 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 2 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 2 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 2 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #2" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #2" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #2" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #2" ][ <instance <class "Person">> ][ "Person #2" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #2" ][ "Person #2" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #2" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #2" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 2 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
allocate: 64
           stackframe: [ <closure <script>> ][ 2 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 2 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 2 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 2 ][ 2 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 2 ][ 2 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 2 ][ 3 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 3 ][ 3 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 3 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 3 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 3 ][ 3 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 3 ][ 3 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 3 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 3 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 3 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 3 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 3 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #3" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #3" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #3" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #3" ][ <instance <class "Person">> ][ "Person #3" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #3" ][ "Person #3" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #3" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #3" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 3 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ 3 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 3 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 3 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 3 ][ 3 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 3 ][ 3 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 3 ][ 4 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 4 ][ 4 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 4 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 4 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 4 ][ 4 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 4 ][ 4 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 4 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 4 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 4 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 4 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 4 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #4" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #4" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #4" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #4" ][ <instance <class "Person">> ][ "Person #4" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #4" ][ "Person #4" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #4" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #4" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 4 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
allocate: 128
           stackframe: [ <closure <script>> ][ 4 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 4 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 4 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 4 ][ 4 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 4 ][ 4 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 4 ][ 5 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 5 ][ 5 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 5 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 5 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 5 ][ 5 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 5 ][ 5 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 5 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 5 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 5 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 5 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 5 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #5" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #5" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #5" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #5" ][ <instance <class "Person">> ][ "Person #5" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #5" ][ "Person #5" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #5" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #5" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 5 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ 5 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 5 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 5 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 5 ][ 5 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 5 ][ 5 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 5 ][ 6 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 6 ][ 6 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 6 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 6 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 6 ][ 6 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 6 ][ 6 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 6 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 6 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 6 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 6 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 6 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #6" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #6" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #6" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #6" ][ <instance <class "Person">> ][ "Person #6" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #6" ][ "Person #6" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #6" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #6" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 6 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ 6 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 6 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 6 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 6 ][ 6 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 6 ][ 6 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 6 ][ 7 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 7 ][ 7 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 7 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 7 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 7 ][ 7 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 7 ][ 7 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 7 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 7 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 7 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 7 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 7 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #7" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #7" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #7" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #7" ][ <instance <class "Person">> ][ "Person #7" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #7" ][ "Person #7" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #7" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #7" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 7 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ 7 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 7 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 7 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 7 ][ 7 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 7 ][ 7 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 7 ][ 8 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 8 ][ 8 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 8 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 8 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 8 ][ 8 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 8 ][ 8 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 8 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 8 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 8 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 8 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 8 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #8" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #8" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #8" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #8" ][ <instance <class "Person">> ][ "Person #8" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #8" ][ "Person #8" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #8" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #8" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 8 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
allocate: 256
           stackframe: [ <closure <script>> ][ 8 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 8 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 8 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 8 ][ 8 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 8 ][ 8 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 8 ][ 9 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 9 ][ 9 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 9 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 9 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 9 ][ 9 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 9 ][ 9 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 9 ][ true ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 9 ][ true ]
0110   OP_POP
           stackframe: [ <closure <script>> ][ 9 ]
0111 OP_JUMP          111  -> 125
           stackframe: [ <closure <script>> ][ 9 ]
0125   OP_GET_GLOBAL [35] "push"
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ]
0127   OP_GET_GLOBAL [36] "people"
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ]
0129   OP_GET_GLOBAL [37] "Person"
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ]
0131   OP_CONSTANT [38] "Person #"
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ]
0133   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #" ][ 9 ]
0135   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <class "Person"> ][ "Person #9" ]
0136   OP_CALL [1] 
allocate: 104
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #9" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #9" ][ <instance <class "Person">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #9" ][ <instance <class "Person">> ][ "Person #9" ]
0004   OP_SET_PROPERTY [0] "name"
allocate: 56
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #9" ][ "Person #9" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #9" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ][ "Person #9" ][ <instance <class "Person">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ 9 ][ <native push> ][ [<instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>, <instance <class "Person">>] ][ <instance <class "Person">> ]
0138   OP_CALL [2] 
           stackframe: [ <closure <script>> ][ 9 ][ nil ]
0140   OP_POP
           stackframe: [ <closure <script>> ][ 9 ]
0141 OP_LOOP          141  -> 114
           stackframe: [ <closure <script>> ][ 9 ]
0114   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 9 ][ 9 ]
0116   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ 9 ][ 9 ][ 1 ]
0118   OP_ADD
           stackframe: [ <closure <script>> ][ 9 ][ 10 ]
0119   OP_SET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 10 ][ 10 ]
0121   OP_POP
           stackframe: [ <closure <script>> ][ 10 ]
0122 OP_LOOP          122  -> 102
           stackframe: [ <closure <script>> ][ 10 ]
0102   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ 10 ][ 10 ]
0104   OP_CONSTANT [33] 10
           stackframe: [ <closure <script>> ][ 10 ][ 10 ][ 10 ]
0106   OP_LESS
           stackframe: [ <closure <script>> ][ 10 ][ false ]
0107 OP_JUMP_IF_FALSE 107  -> 144
           stackframe: [ <closure <script>> ][ 10 ][ false ]
0144   OP_POP
           stackframe: [ <closure <script>> ][ 10 ]
0145   OP_POP
           stackframe: [ <closure <script>> ]
0146   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0147   OP_SET_GLOBAL [39] "people"
           stackframe: [ <closure <script>> ][ nil ]
0149   OP_POP
           stackframe: [ <closure <script>> ]
0150   OP_CONSTANT [40] "People"
           stackframe: [ <closure <script>> ][ "People" ]
0152   OP_CONSTANT [41] "can be collected now."
           stackframe: [ <closure <script>> ][ "People" ][ "can be collected now." ]
0154   OP_ADD
allocate: 80
gc collect 3128 bytes
allocate: 31
allocate: 40
           stackframe: [ <closure <script>> ][ "Peoplecan be collected now." ]
0155   OP_PRINT
"Peoplecan be collected now."
           stackframe: [ <closure <script>> ]
0156   OP_CLOSURE [43] <fn "memoryConsumer">
allocate: 80
           stackframe: [ <closure <script>> ][ <closure <fn "memoryConsumer">> ]
0158   OP_DEFINE_GLOBAL [42] "memoryConsumer"
allocate: 56
gc collect 151 bytes
           stackframe: [ <closure <script>> ]
0160   OP_GET_GLOBAL [45] "memoryConsumer"
           stackframe: [ <closure <script>> ][ <closure <fn "memoryConsumer">> ]
0162   OP_CREATE_COROUTINE
allocate: 160
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "memoryConsumer">>> ]
0164   OP_DEFINE_GLOBAL [44] "co"
allocate: 56
           stackframe: [ <closure <script>> ]
0166   OP_GET_GLOBAL [46] "co"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "memoryConsumer">>> ]
0168   OP_RESUME_COROUTINE
           stackframe: [ nil ]
0000   OP_CONSTANT [0] "Creating a big list..."
           stackframe: [ nil ][ "Creating a big list..." ]
0002   OP_PRINT
"Creating a big list..."
           stackframe: [ nil ]
0003   OP_ARRAY size: 0
allocate: 72
           stackframe: [ nil ][ [] ]
0005   OP_CONSTANT [1] 0
           stackframe: [ nil ][ [] ][ 0 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ [] ][ 0 ][ 0 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ [] ][ 0 ][ 0 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ [] ][ 0 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ [] ][ 0 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ [] ][ 0 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ [] ][ 0 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ [] ][ 0 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ [] ][ 0 ][ <native push> ][ [] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ [] ][ 0 ][ <native push> ][ [] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ [] ][ 0 ][ <native push> ][ [] ][ "Item " ][ 0 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ [] ][ 0 ][ <native push> ][ [] ][ "Item 0" ]
0039   OP_CALL [2] 
allocate: 16
           stackframe: [ nil ][ ["Item 0"] ][ 0 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0"] ][ 0 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0"] ][ 0 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0"] ][ 0 ][ 0 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0"] ][ 0 ][ 0 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0"] ][ 0 ][ 1 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ 1 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0"] ][ 1 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0"] ][ 1 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ 1 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ 1 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0"] ][ 1 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0"] ][ 1 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ <native push> ][ ["Item 0"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ <native push> ][ ["Item 0"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ <native push> ][ ["Item 0"] ][ "Item " ][ 1 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0"] ][ 1 ][ <native push> ][ ["Item 0"] ][ "Item 1" ]
0039   OP_CALL [2] 
allocate: 32
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 1 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 1 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 1 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 1 ][ 1 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 1 ][ 1 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 1 ][ 2 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ 2 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ 2 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ 2 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ <native push> ][ ["Item 0", "Item 1"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ <native push> ][ ["Item 0", "Item 1"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ <native push> ][ ["Item 0", "Item 1"] ][ "Item " ][ 2 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1"] ][ 2 ][ <native push> ][ ["Item 0", "Item 1"] ][ "Item 2" ]
0039   OP_CALL [2] 
allocate: 64
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 2 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 2 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 2 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 2 ][ 2 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 2 ][ 2 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 2 ][ 3 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ 3 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ 3 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ 3 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ <native push> ][ ["Item 0", "Item 1", "Item 2"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ <native push> ][ ["Item 0", "Item 1", "Item 2"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ <native push> ][ ["Item 0", "Item 1", "Item 2"] ][ "Item " ][ 3 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2"] ][ 3 ][ <native push> ][ ["Item 0", "Item 1", "Item 2"] ][ "Item 3" ]
0039   OP_CALL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 3 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 3 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 3 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 3 ][ 3 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 3 ][ 3 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 3 ][ 4 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ 4 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ 4 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ 4 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ "Item " ][ 4 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ 4 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3"] ][ "Item 4" ]
0039   OP_CALL [2] 
allocate: 128
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 4 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 4 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 4 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 4 ][ 4 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 4 ][ 4 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 4 ][ 5 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ 5 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ 5 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ 5 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ "Item " ][ 5 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ 5 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4"] ][ "Item 5" ]
0039   OP_CALL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 5 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 5 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 5 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 5 ][ 5 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 5 ][ 5 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 5 ][ 6 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ 6 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ 6 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ 6 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ "Item " ][ 6 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ 6 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5"] ][ "Item 6" ]
0039   OP_CALL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 6 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 6 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 6 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 6 ][ 6 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 6 ][ 6 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 6 ][ 7 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ 7 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ 7 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ 7 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ "Item " ][ 7 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ 7 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"] ][ "Item 7" ]
0039   OP_CALL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 7 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 7 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 7 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 7 ][ 7 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 7 ][ 7 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 7 ][ 8 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ 8 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ 8 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ 8 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ "Item " ][ 8 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ 8 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"] ][ "Item 8" ]
0039   OP_CALL [2] 
allocate: 256
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 8 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 8 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 8 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 8 ][ 8 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 8 ][ 8 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 8 ][ 9 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ 9 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ 9 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ 9 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ true ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ true ]
0015   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ]
0016 OP_JUMP          16   -> 30
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ]
0030   OP_GET_GLOBAL [4] "push"
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ <native push> ]
0032   OP_GET_LOCAL [1] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ]
0034   OP_CONSTANT [5] "Item "
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ "Item " ]
0036   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ "Item " ][ 9 ]
0038   OP_ADD
allocate: 80
allocate: 40
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ 9 ][ <native push> ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"] ][ "Item 9" ]
0039   OP_CALL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 9 ][ nil ]
0041   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 9 ]
0042 OP_LOOP          42   -> 19
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 9 ]
0019   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 9 ][ 9 ]
0021   OP_CONSTANT [3] 1
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 9 ][ 9 ][ 1 ]
0023   OP_ADD
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 9 ][ 10 ]
0024   OP_SET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ][ 10 ]
0026   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ]
0027 OP_LOOP          27   -> 7
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ]
0007   OP_GET_LOCAL [2] 
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ][ 10 ]
0009   OP_CONSTANT [2] 10
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ][ 10 ][ 10 ]
0011   OP_LESS
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ][ false ]
0012 OP_JUMP_IF_FALSE 12   -> 45
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ][ false ]
0045   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ 10 ]
0046   OP_POP
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ]
0047   OP_CONSTANT [6] "Yield with bigList in memory."
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ "Yield with bigList in memory." ]
0049   OP_PRINT
"Yield with bigList in memory."
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ]
0050   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0169   OP_CONSTANT [47] "Main: after first resume."
           stackframe: [ <closure <script>> ][ "Main: after first resume." ]
0171   OP_PRINT
"Main: after first resume."
           stackframe: [ <closure <script>> ]
0172   OP_GET_GLOBAL [48] "co"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "memoryConsumer">>> ]
0174   OP_RESUME_COROUTINE
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ]
0051   OP_NIL
           stackframe: [ nil ][ ["Item 0", "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9"] ][ nil ]
0052   OP_SET_LOCAL [1] 
           stackframe: [ nil ][ nil ][ nil ]
0054   OP_POP
           stackframe: [ nil ][ nil ]
0055   OP_CONSTANT [7] "Yield after dropping bigList reference."
           stackframe: [ nil ][ nil ][ "Yield after dropping bigList reference." ]
0057   OP_PRINT
"Yield after dropping bigList reference."
           stackframe: [ nil ][ nil ]
0058   OP_YIELD_COROUTINE
           stackframe: [ <closure <script>> ]
0175   OP_CONSTANT [49] "Main: after second resume."
           stackframe: [ <closure <script>> ][ "Main: after second resume." ]
0177   OP_PRINT
"Main: after second resume."
           stackframe: [ <closure <script>> ]
0178   OP_GET_GLOBAL [50] "co"
           stackframe: [ <closure <script>> ][ <coroutine <closure <fn "memoryConsumer">>> ]
0180   OP_RESUME_COROUTINE
           stackframe: [ nil ][ nil ]
0059   OP_CONSTANT [8] "memoryConsumer done."
           stackframe: [ nil ][ nil ][ "memoryConsumer done." ]
0061   OP_PRINT
"memoryConsumer done."
           stackframe: [ nil ][ nil ]
0062   OP_NIL
           stackframe: [ nil ][ nil ][ nil ]
0063   OP_RETURN
           stackframe: [ <closure <script>> ]
0181   OP_CONSTANT [51] "Main:"
           stackframe: [ <closure <script>> ][ "Main:" ]
0183   OP_CONSTANT [52] "done."
           stackframe: [ <closure <script>> ][ "Main:" ][ "done." ]
0185   OP_ADD
allocate: 80
gc collect 1408 bytes
allocate: 40
gc collect 120 bytes
           stackframe: [ <closure <script>> ][ "Main:done." ]
0186   OP_PRINT
"Main:done."
           stackframe: [ <closure <script>> ]
0187   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0188   OP_RETURN
