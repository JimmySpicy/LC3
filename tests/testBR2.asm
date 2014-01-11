	.ORIG x0000
	ADD R0,R0, -2
	ADD R6,R6,14
ret:	ADD R0,R0,1
	BRn testn
	BRz testz
	BRp testp
	ADD R4,R4,2
	BR fin
testn:	ADD R1,R1,6
	BR ret
testz:	ADD R3,R3,8
	BR ret
testp:	ADD R2,R2, -12
	BR fin
jump:	ADD R5,R5,19
fin:	NOP
	.END