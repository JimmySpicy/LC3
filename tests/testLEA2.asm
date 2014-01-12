        .ORIG x0000
        LEA R0,x                ; R0 pointe sur x
        ADD R0,R0,1             ; R0 pointe sur y
        LDR R1,R0,0             ; R1 = 2
        ADD R0,R0,1             ; R0 pointe sur z
        STR R1,R0,0             ; z = 2
        LDR R3,R0,0             ; R3 vaut 2
        BR end
x:      .FILL x0001
y:      .FILL x0002
z:      .FILL x0003
end:    NOP
        .END