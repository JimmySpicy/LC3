	.ORIG x3000
	AND R0,R0,0
	ADD R0,R0,7
	ADD R1,R0,7
	ADD R2,R1,R0	
	ADD R0,R0,7
	ADD R0,R0,7
	NOT R2,R0
	LD R1,n
	BR sous
retour:	STR R2,R1,0
	JMP R0
sous:	ADD R0,R0,3
	BR retour

;constantes
n:	.FILL 42

end:	.END