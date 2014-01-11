        .ORIG x0000
        ADD R0,R0,-2
        BRn bip
        ADD R1,R1,-1
        ADD R2,R2,-1
        ADD R3,R3,-1
        ADD R4,R4,-1
bip:    ADD R5,R5,7
        .END
