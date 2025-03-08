=== "a"===
=== <script> ===
           stackframe: [ <closure <script>> ]
0000   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ 1 ]
0002   OP_DEFINE_GLOBAL [0] "type"
           stackframe: [ <closure <script>> ]
0004   OP_CONSTANT [3] "123"
           stackframe: [ <closure <script>> ][ "123" ]
0006   OP_SET_GLOBAL [2] "type"
           stackframe: [ <closure <script>> ][ "123" ]
0008   OP_POP
           stackframe: [ <closure <script>> ]
0009   OP_CONSTANT [5] 1
           stackframe: [ <closure <script>> ][ 1 ]
0011   OP_CONSTANT [6] 2
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0013   OP_CONSTANT [7] 3
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 3 ]
0015   OP_ARRAY size: 3
           stackframe: [ <closure <script>> ][ [1, 2, 3] ]
0017   OP_SET_GLOBAL [4] "type"
           stackframe: [ <closure <script>> ][ [1, 2, 3] ]
0019   OP_POP
           stackframe: [ <closure <script>> ]
0020   OP_GET_GLOBAL [8] "type"
           stackframe: [ <closure <script>> ][ [1, 2, 3] ]
0022   OP_PRINT
[1, 2, 3]
           stackframe: [ <closure <script>> ]
0023   OP_CLOSURE [10] <fn "a">
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ]
0025   OP_DEFINE_GLOBAL [9] "a"
           stackframe: [ <closure <script>> ]
0027   OP_GET_GLOBAL [12] "a"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ]
0029   OP_SET_GLOBAL [11] "type"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ]
0031   OP_POP
           stackframe: [ <closure <script>> ]
0032   OP_GET_GLOBAL [13] "a"
           stackframe: [ <closure <script>> ][ <closure <fn "a">> ]
0034   OP_PRINT
<closure <fn "a">>
           stackframe: [ <closure <script>> ]
0035   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0036   OP_RETURN
