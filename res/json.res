=== <script> ===
           stackframe: [ <closure <script>> ]
0000   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ 1 ]
0002   OP_CONSTANT [2] "first"
           stackframe: [ <closure <script>> ][ 1 ][ "first" ]
0004   OP_CONSTANT [3] "2"
           stackframe: [ <closure <script>> ][ 1 ][ "first" ][ "2" ]
0006   OP_CONSTANT [4] "second"
           stackframe: [ <closure <script>> ][ 1 ][ "first" ][ "2" ][ "second" ]
0008   OP_JSON
           stackframe: [ <closure <script>> ][ {1 : "first", "2" : "second"} ]
0010   OP_DEFINE_GLOBAL [0] "json"
           stackframe: [ <closure <script>> ]
0012   OP_GET_GLOBAL [5] "json"
           stackframe: [ <closure <script>> ][ {1 : "first", "2" : "second"} ]
0014   OP_PRINT
{1 : "first", "2" : "second"}
           stackframe: [ <closure <script>> ]
0015   OP_GET_GLOBAL [6] "json"
           stackframe: [ <closure <script>> ][ {1 : "first", "2" : "second"} ]
0017   OP_CONSTANT [7] 1
           stackframe: [ <closure <script>> ][ {1 : "first", "2" : "second"} ][ 1 ]
0019   OP_CONSTANT [8] "new"
           stackframe: [ <closure <script>> ][ {1 : "first", "2" : "second"} ][ 1 ][ "new" ]
0021   OP_SET_ELEMENT
           stackframe: [ <closure <script>> ][ "new" ]
0022   OP_POP
           stackframe: [ <closure <script>> ]
0023   OP_GET_GLOBAL [9] "json"
           stackframe: [ <closure <script>> ][ {1 : "new", "2" : "second"} ]
0025   OP_PRINT
{1 : "new", "2" : "second"}
           stackframe: [ <closure <script>> ]
0026   OP_GET_GLOBAL [10] "json"
           stackframe: [ <closure <script>> ][ {1 : "new", "2" : "second"} ]
0028   OP_CONSTANT [11] 1
           stackframe: [ <closure <script>> ][ {1 : "new", "2" : "second"} ][ 1 ]
0030   OP_CONSTANT [12] 2
           stackframe: [ <closure <script>> ][ {1 : "new", "2" : "second"} ][ 1 ][ 2 ]
0032   OP_CONSTANT [13] 3
           stackframe: [ <closure <script>> ][ {1 : "new", "2" : "second"} ][ 1 ][ 2 ][ 3 ]
0034   OP_ARRAY size: 3
           stackframe: [ <closure <script>> ][ {1 : "new", "2" : "second"} ][ [1, 2, 3] ]
0036   OP_CONSTANT [14] 123
           stackframe: [ <closure <script>> ][ {1 : "new", "2" : "second"} ][ [1, 2, 3] ][ 123 ]
0038   OP_SET_ELEMENT
           stackframe: [ <closure <script>> ][ 123 ]
0039   OP_POP
           stackframe: [ <closure <script>> ]
0040   OP_GET_GLOBAL [15] "json"
           stackframe: [ <closure <script>> ][ {[1, 2, 3] : 123, 1 : "new", "2" : "second"} ]
0042   OP_PRINT
{[1, 2, 3] : 123, 1 : "new", "2" : "second"}
           stackframe: [ <closure <script>> ]
0043   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0044   OP_RETURN
