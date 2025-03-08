=== "closure"===
=== "makeClosure"===
=== "counter"===
=== "makeCounter"===
=== <script> ===
           stackframe: [ <closure <script>> ]
0000   OP_CLOSURE [1] <fn "makeClosure">
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ]
0002   OP_DEFINE_GLOBAL [0] "makeClosure"
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [3] "makeClosure"
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ]
0006   OP_CONSTANT [4] "doughnut"
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "doughnut" ]
0008   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "doughnut" ]
0000   OP_CLOSURE [0] <fn "closure">
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "doughnut" ][ <closure <fn "closure">> ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "doughnut" ][ <closure <fn "closure">> ][ <closure <fn "closure">> ]
0006   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0010   OP_DEFINE_GLOBAL [2] "doughnut"
           stackframe: [ <closure <script>> ]
0012   OP_GET_GLOBAL [6] "makeClosure"
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ]
0014   OP_CONSTANT [7] "bagel"
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "bagel" ]
0016   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "bagel" ]
0000   OP_CLOSURE [0] <fn "closure">
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "bagel" ][ <closure <fn "closure">> ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeClosure">> ][ "bagel" ][ <closure <fn "closure">> ][ <closure <fn "closure">> ]
0006   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0018   OP_DEFINE_GLOBAL [5] "bagel"
           stackframe: [ <closure <script>> ]
0020   OP_GET_GLOBAL [8] "doughnut"
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0022   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0000   OP_GET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ][ "doughnut" ]
0002   OP_PRINT
"doughnut"
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0003   OP_NIL
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ][ nil ]
0004   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0024   OP_POP
           stackframe: [ <closure <script>> ]
0025   OP_GET_GLOBAL [9] "bagel"
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0027   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0000   OP_GET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ][ "bagel" ]
0002   OP_PRINT
"bagel"
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ]
0003   OP_NIL
           stackframe: [ <closure <script>> ][ <closure <fn "closure">> ][ nil ]
0004   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0029   OP_POP
           stackframe: [ <closure <script>> ]
0030   OP_CLOSURE [11] <fn "makeCounter">
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ]
0032   OP_DEFINE_GLOBAL [10] "makeCounter"
           stackframe: [ <closure <script>> ]
0034   OP_GET_GLOBAL [13] "makeCounter"
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ]
0036   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ]
0000   OP_CONSTANT [0] 0
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ][ 0 ]
0002   OP_CLOSURE [1] <fn "counter">
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ][ 0 ][ <closure <fn "counter">> ]
0006   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ <closure <fn "makeCounter">> ][ 0 ][ <closure <fn "counter">> ][ <closure <fn "counter">> ]
0008   OP_RETURN
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0038   OP_DEFINE_GLOBAL [12] "counterA"
           stackframe: [ <closure <script>> ]
0040   OP_GET_GLOBAL [14] "counterA"
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0042   OP_CALL [0] 
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
0044   OP_PRINT
1
           stackframe: [ <closure <script>> ]
0045   OP_GET_GLOBAL [15] "counterA"
           stackframe: [ <closure <script>> ][ <closure <fn "counter">> ]
0047   OP_CALL [0] 
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
0049   OP_PRINT
2
           stackframe: [ <closure <script>> ]
0050   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0051   OP_RETURN
