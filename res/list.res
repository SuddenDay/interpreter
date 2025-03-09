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
allocate: 512
allocate: 1024
=== <script> ===
allocate: 80
allocate: 160
           stackframe: [ <closure <script>> ]
0000   OP_CONSTANT [1] 1
           stackframe: [ <closure <script>> ][ 1 ]
0002   OP_CONSTANT [2] 2
           stackframe: [ <closure <script>> ][ 1 ][ 2 ]
0004   OP_CONSTANT [3] 3
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 3 ]
0006   OP_CONSTANT [4] 4
           stackframe: [ <closure <script>> ][ 1 ][ 2 ][ 3 ][ 4 ]
0008   OP_ARRAY size: 4
allocate: 72
allocate: 64
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ]
0010   OP_DEFINE_GLOBAL [0] "list"
allocate: 56
           stackframe: [ <closure <script>> ]
0012   OP_GET_GLOBAL [5] "list"
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ]
0014   OP_PRINT
[1, 2, 3, 4]
           stackframe: [ <closure <script>> ]
0015   OP_GET_GLOBAL [6] "list"
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ]
0017   OP_CONSTANT [7] 0
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ][ 0 ]
0019   OP_GET_GLOBAL [8] "list"
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ][ 0 ][ [1, 2, 3, 4] ]
0021   OP_CONSTANT [9] 0
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ][ 0 ][ [1, 2, 3, 4] ][ 0 ]
0023   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ][ 0 ][ 1 ]
0024   OP_CONSTANT [10] 1
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ][ 0 ][ 1 ][ 1 ]
0026   OP_ADD
           stackframe: [ <closure <script>> ][ [1, 2, 3, 4] ][ 0 ][ 2 ]
0027   OP_SET_ELEMENT
           stackframe: [ <closure <script>> ][ 2 ]
0028   OP_POP
           stackframe: [ <closure <script>> ]
0029   OP_GET_GLOBAL [11] "list"
           stackframe: [ <closure <script>> ][ [2, 2, 3, 4] ]
0031   OP_PRINT
[2, 2, 3, 4]
           stackframe: [ <closure <script>> ]
0032   OP_GET_GLOBAL [12] "insert"
           stackframe: [ <closure <script>> ][ <native insert> ]
0034   OP_GET_GLOBAL [13] "list"
           stackframe: [ <closure <script>> ][ <native insert> ][ [2, 2, 3, 4] ]
0036   OP_CONSTANT [14] 0
           stackframe: [ <closure <script>> ][ <native insert> ][ [2, 2, 3, 4] ][ 0 ]
0038   OP_CONSTANT [15] 5
           stackframe: [ <closure <script>> ][ <native insert> ][ [2, 2, 3, 4] ][ 0 ][ 5 ]
0040   OP_CALL [3] 
allocate: 128
           stackframe: [ <closure <script>> ][ nil ]
0042   OP_POP
           stackframe: [ <closure <script>> ]
0043   OP_GET_GLOBAL [16] "list"
           stackframe: [ <closure <script>> ][ [5, 2, 2, 3, 4] ]
0045   OP_PRINT
[5, 2, 2, 3, 4]
           stackframe: [ <closure <script>> ]
0046   OP_GET_GLOBAL [17] "pop"
           stackframe: [ <closure <script>> ][ <native pop> ]
0048   OP_GET_GLOBAL [18] "list"
           stackframe: [ <closure <script>> ][ <native pop> ][ [5, 2, 2, 3, 4] ]
0050   OP_CALL [1] 
           stackframe: [ <closure <script>> ][ 4 ]
0052   OP_POP
           stackframe: [ <closure <script>> ]
0053   OP_GET_GLOBAL [19] "list"
           stackframe: [ <closure <script>> ][ [5, 2, 2, 3] ]
0055   OP_PRINT
[5, 2, 2, 3]
           stackframe: [ <closure <script>> ]
0056   OP_GET_GLOBAL [20] "list"
           stackframe: [ <closure <script>> ][ [5, 2, 2, 3] ]
0058   OP_CONSTANT [21] 0
           stackframe: [ <closure <script>> ][ [5, 2, 2, 3] ][ 0 ]
0060   OP_CONSTANT [22] 1
           stackframe: [ <closure <script>> ][ [5, 2, 2, 3] ][ 0 ][ 1 ]
0062   OP_CONSTANT [23] 2
           stackframe: [ <closure <script>> ][ [5, 2, 2, 3] ][ 0 ][ 1 ][ 2 ]
0064   OP_ARRAY size: 2
allocate: 72
allocate: 32
           stackframe: [ <closure <script>> ][ [5, 2, 2, 3] ][ 0 ][ [1, 2] ]
0066   OP_SET_ELEMENT
           stackframe: [ <closure <script>> ][ [1, 2] ]
0067   OP_POP
           stackframe: [ <closure <script>> ]
0068   OP_GET_GLOBAL [24] "list"
           stackframe: [ <closure <script>> ][ [[1, 2], 2, 2, 3] ]
0070   OP_PRINT
[[1, 2], 2, 2, 3]
           stackframe: [ <closure <script>> ]
0071   OP_GET_GLOBAL [25] "list"
           stackframe: [ <closure <script>> ][ [[1, 2], 2, 2, 3] ]
0073   OP_CONSTANT [26] 0
           stackframe: [ <closure <script>> ][ [[1, 2], 2, 2, 3] ][ 0 ]
0075   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ [1, 2] ]
0076   OP_CONSTANT [27] 0
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ]
0078   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ 1 ]
0079   OP_PRINT
1
           stackframe: [ <closure <script>> ]
0080   OP_GET_GLOBAL [28] "list"
           stackframe: [ <closure <script>> ][ [[1, 2], 2, 2, 3] ]
0082   OP_CONSTANT [29] 0
           stackframe: [ <closure <script>> ][ [[1, 2], 2, 2, 3] ][ 0 ]
0084   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ [1, 2] ]
0085   OP_CONSTANT [30] 0
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ]
0087   OP_GET_GLOBAL [31] "list"
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ][ [[1, 2], 2, 2, 3] ]
0089   OP_CONSTANT [32] 0
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ][ [[1, 2], 2, 2, 3] ][ 0 ]
0091   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ][ [1, 2] ]
0092   OP_CONSTANT [33] 0
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ][ [1, 2] ][ 0 ]
0094   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ][ 1 ]
0095   OP_CONSTANT [34] 1
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ][ 1 ][ 1 ]
0097   OP_ADD
           stackframe: [ <closure <script>> ][ [1, 2] ][ 0 ][ 2 ]
0098   OP_SET_ELEMENT
           stackframe: [ <closure <script>> ][ 2 ]
0099   OP_POP
           stackframe: [ <closure <script>> ]
0100   OP_GET_GLOBAL [35] "list"
           stackframe: [ <closure <script>> ][ [[2, 2], 2, 2, 3] ]
0102   OP_CONSTANT [36] 0
           stackframe: [ <closure <script>> ][ [[2, 2], 2, 2, 3] ][ 0 ]
0104   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ [2, 2] ]
0105   OP_CONSTANT [37] 0
           stackframe: [ <closure <script>> ][ [2, 2] ][ 0 ]
0107   OP_GET_ELEMENT
           stackframe: [ <closure <script>> ][ 2 ]
0108   OP_PRINT
2
           stackframe: [ <closure <script>> ]
0109   OP_NIL
           stackframe: [ <closure <script>> ][ nil ]
0110   OP_RETURN
