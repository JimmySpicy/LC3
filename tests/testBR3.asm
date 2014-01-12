	.ORIG x0000
        ADD R0,R0,-4
        ADD R0,R0,1
        BRp s4
        ADD R0,R0,1
        BRp s3
        ADD R0,R0,1
        BRp s2
        ADD R0,R0,1
        BRp s1
        ADD R0,R0,1
        BRp s0
s4:     ADD R2,R2,4
	BR fin
s3:     ADD R2,R2,2
	BR fin
s2:     ADD R2,R2,3
	BR fin
s1:     ADD R2,R2,1
	BR fin
s0:     ADD R2,R2,-1
	BR fin
simp:   ADD R3,R3,10
	BR fin
fin:    .END