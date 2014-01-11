	.ORIG x3000
        ADD R0,R0,8
        LD R0,n
        LDR R1,R0,0
        BR end
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
;constantes
n:	.FILL xfedc
end:	NOP
	.END