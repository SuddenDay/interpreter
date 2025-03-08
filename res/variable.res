=== "showVariable"===
=== "showGreeting"===
=== <script> ===
           stackframe: [ <closure <script>> ]
0000   OP_CONSTANT [0] "outer"
           stackframe: [ <closure <script>> ][ "outer" ]
0002   OP_CONSTANT [1] "inside"
           stackframe: [ <closure <script>> ][ "outer" ][ "inside" ]
0004   OP_GET_LOCAL [2] 
           stackframe: [ <closure <script>> ][ "outer" ][ "inside" ][ "inside" ]
0006   OP_PRINT
"inside"
           stackframe: [ <closure <script>> ][ "outer" ][ "inside" ]
0007   OP_POP
           stackframe: [ <closure <script>> ][ "outer" ]
0008   OP_POP
           stackframe: [ <closure <script>> ]
0009   OP_CLOSURE [3] <fn "showVariable">
           stackframe: [ <closure <script>> ][ <closure <fn "showVariable">> ]
0011   OP_DEFINE_GLOBAL [2] "showVariable"
           stackframe: [ <closure <script>> ]
0013   OP_CONSTANT [5] "after"
           stackframe: [ <closure <script>> ][ "after" ]
0015   OP_DEFINE_GLOBAL [4] "global"
           stackframe: [ <closure <script>> ]
0017   OP_GET_GLOBAL [6] "showVariable"
           stackframe: [ <closure <script>> ][ <closure <fn "showVariable">> ]
0019   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "showVariable">> ]
0000   OP_GET_GLOBAL [0] "global"
           stackframe: [ <closure <script>> ][ <closure <fn "showVariable">> ][ "after" ]
0002   OP_PRINT
"after"
           stackframe: [ <closure <script>> ][ <closure <fn "showVariable">> ]
0003   OP_NIL
           stackframe: [ <closure <script>> ][ <closure <fn "showVariable">> ][ nil ]
0004   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0021   OP_POP
           stackframe: [ <closure <script>> ]
0022   OP_CONSTANT [8] "Global Hello"
           stackframe: [ <closure <script>> ][ "Global Hello" ]
0024   OP_DEFINE_GLOBAL [7] "greeting"
           stackframe: [ <closure <script>> ]
0026   OP_GET_GLOBAL [9] "greeting"
           stackframe: [ <closure <script>> ][ "Global Hello" ]
0028   OP_PRINT
"Global Hello"
           stackframe: [ <closure <script>> ]
0029   OP_CONSTANT [10] "Local Hello"
           stackframe: [ <closure <script>> ][ "Local Hello" ]
0031   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ "Local Hello" ][ "Local Hello" ]
0033   OP_PRINT
"Local Hello"
           stackframe: [ <closure <script>> ][ "Local Hello" ]
0034   OP_POP
           stackframe: [ <closure <script>> ]
0035   OP_GET_GLOBAL [11] "greeting"
           stackframe: [ <closure <script>> ][ "Global Hello" ]
0037   OP_PRINT
"Global Hello"
           stackframe: [ <closure <script>> ]
0038   OP_CLOSURE [13] <fn "showGreeting">
           stackframe: [ <closure <script>> ][ <closure <fn "showGreeting">> ]
0040   OP_DEFINE_GLOBAL [12] "showGreeting"
           stackframe: [ <closure <script>> ]
0042   OP_GET_GLOBAL [14] "showGreeting"
           stackframe: [ <closure <script>> ][ <closure <fn "showGreeting">> ]
0044   OP_CALL [0] 
           stackframe: [ <closure <script>> ][ <closure <fn "showGreeting">> ]
0000   OP_CONSTANT [0] "Function Hello"
           stackframe: [ <closure <script>> ][ <closure <fn "showGreeting">> ][ "Function Hello" ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <closure <fn "showGreeting">> ][ "Function Hello" ][ "Function Hello" ]
0004   OP_PRINT
"Function Hello"
           stackframe: [ <closure <script>> ][ <closure <fn "showGreeting">> ][ "Function Hello" ]
0005   OP_NIL
           stackframe: [ <closure <script>> ][ <closure <fn "showGreeting">> ][ "Function Hello" ][ nil ]
0006   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0046   OP_POP
           stackframe: [ <closure <script>> ]
0047   OP_GET_GLOBAL [15] "greeting"
           stackframe: [ <closure <script>> ][ "Global Hello" ]
0049   OP_PRINT
"Global Hello"
           stackframe: [ <closure <script>> ]
0050   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0051   OP_RETURN
