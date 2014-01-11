	.ORIG x0000
        ADD R0,R0,8
        LD R0,n
	ADD R2,R2,12
        LDR R1,R2,0
        BR end
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
;constantes
n:	.FILL xfedc
m:	.FILL xabcd
end:	NOP
	.END