=== "init"===
=== "speak"===
=== "speak"===
=== <script> ===
           stackframe: [ <closure <script>> ]
0000   OP_CLASS [0] "Animal"
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0002   OP_DEFINE_GLOBAL [0] "Animal"
           stackframe: [ <closure <script>> ]
0004   OP_GET_GLOBAL [1] "Animal"
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0006   OP_CLOSURE [3] <fn "init">
           stackframe: [ <closure <script>> ][ <class "Animal"> ][ <closure <fn "init">> ]
0008   OP_METHOD [2] "init"
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0010   OP_CLOSURE [5] <fn "speak">
           stackframe: [ <closure <script>> ][ <class "Animal"> ][ <closure <fn "speak">> ]
0012   OP_METHOD [4] "speak"
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0014   OP_POP
           stackframe: [ <closure <script>> ]
0015   OP_CLASS [6] "Dog"
           stackframe: [ <closure <script>> ][ <class "Dog"> ]
0017   OP_DEFINE_GLOBAL [6] "Dog"
           stackframe: [ <closure <script>> ]
0019   OP_GET_GLOBAL [7] "Animal"
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0021   OP_GET_GLOBAL [8] "Dog"
           stackframe: [ <closure <script>> ][ <class "Animal"> ][ <class "Dog"> ]
0023   OP_INHERIT
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0024   OP_GET_GLOBAL [9] "Dog"
           stackframe: [ <closure <script>> ][ <class "Animal"> ][ <class "Dog"> ]
0026   OP_CLOSURE [11] <fn "speak">
           stackframe: [ <closure <script>> ][ <class "Animal"> ][ <class "Dog"> ][ <closure <fn "speak">> ]
0030   OP_METHOD [10] "speak"
           stackframe: [ <closure <script>> ][ <class "Animal"> ][ <class "Dog"> ]
0032   OP_POP
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0033   OP_CLOSE_UPVALUE
           stackframe: [ <closure <script>> ]
0034   OP_GET_GLOBAL [13] "Animal"
           stackframe: [ <closure <script>> ][ <class "Animal"> ]
0036   OP_CONSTANT [14] "Generic Animal"
           stackframe: [ <closure <script>> ][ <class "Animal"> ][ "Generic Animal" ]
0038   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ][ <instance <class "Animal">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ][ <instance <class "Animal">> ][ "Generic Animal" ]
0004   OP_SET_PROPERTY [0] "name"
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ][ "Generic Animal" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ][ <instance <class "Animal">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ]
0040   OP_DEFINE_GLOBAL [12] "animal"
           stackframe: [ <closure <script>> ]
0042   OP_GET_GLOBAL [15] "animal"
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ]
0044   OP_INVOKE(args: 0) [16] "speak"
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ <instance <class "Animal">> ]
0002   OP_GET_PROPERTY [0] "name"
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ]
0004   OP_CONSTANT [1] " makes a sound."
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal" ][ " makes a sound." ]
0006   OP_ADD
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ "Generic Animal makes a sound." ]
0007   OP_PRINT
"Generic Animal makes a sound."
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ]
0008   OP_NIL
           stackframe: [ <closure <script>> ][ <instance <class "Animal">> ][ nil ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0047   OP_POP
           stackframe: [ <closure <script>> ]
0048   OP_GET_GLOBAL [18] "Dog"
           stackframe: [ <closure <script>> ][ <class "Dog"> ]
0050   OP_CONSTANT [19] "Buddy"
           stackframe: [ <closure <script>> ][ <class "Dog"> ][ "Buddy" ]
0052   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ][ <instance <class "Dog">> ]
0002   OP_GET_LOCAL [1] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ][ <instance <class "Dog">> ][ "Buddy" ]
0004   OP_SET_PROPERTY [0] "name"
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ][ "Buddy" ]
0006   OP_POP
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ]
0007   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ][ <instance <class "Dog">> ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ]
0054   OP_DEFINE_GLOBAL [17] "dog"
           stackframe: [ <closure <script>> ]
0056   OP_GET_GLOBAL [20] "dog"
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ]
0058   OP_INVOKE(args: 0) [21] "speak"
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ]
0002   OP_GET_UPVALUE [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ][ <class "Animal"> ]
0004   OP_SUPER_INVOKE(args: 0) [0] "speak"
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ]
0000   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ]
0002   OP_GET_PROPERTY [0] "name"
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ][ "Buddy" ]
0004   OP_CONSTANT [1] " makes a sound."
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ][ "Buddy" ][ " makes a sound." ]
0006   OP_ADD
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ][ "Buddy makes a sound." ]
0007   OP_PRINT
"Buddy makes a sound."
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ]
0008   OP_NIL
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ][ nil ]
0009   OP_RETURN
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ nil ]
0007   OP_POP
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ]
0008   OP_GET_LOCAL [0] 
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ <instance <class "Dog">> ]
0010   OP_GET_PROPERTY [1] "name"
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ]
0012   OP_CONSTANT [2] " barks."
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy" ][ " barks." ]
0014   OP_ADD
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ "Buddy barks." ]
0015   OP_PRINT
"Buddy barks."
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ]
0016   OP_NIL
           stackframe: [ <closure <script>> ][ <instance <class "Dog">> ][ nil ]
0017   OP_RETURN
           stackframe: [ <closure <script>> ][ nil ]
0061   OP_POP
           stackframe: [ <closure <script>> ]
0062   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0063   OP_RETURN
