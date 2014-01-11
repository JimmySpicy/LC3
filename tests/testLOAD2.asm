	.ORIG x0000
x:      .FILL 51
        ADD R0,R0,10
        LD R1,n                 ; R1 = 8
        LD R2,m                 ; R2 = 4
        LDR R3,R0,1             ; R3 = 42
        ADD R4,R2,R3            ; R4 = 12
        LD R5,x                 ; R5 = 51
        BR end
;constantes
n:	.FILL 8
m:	.FILL 4
        .FILL 42
end:	NOP
	.END