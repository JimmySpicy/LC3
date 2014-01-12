        .ORIG x0000
        ADD R0,R0,7
        ADD R2,R2,5
        JSRR R2
        ADD R2,R2,9
        BR fin
test:   ADD R1,R1,3
        JSR boucle
        BR fin
boucle: ADD R4,R4,1
        ADD R1,R1,-1
        BRp boucle
        RET
fin:    .END