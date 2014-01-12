        .ORIG x0000
        LEA R0,x                ; R0 devrait valoir 8
        LEA R1,y                ; R1 = 9
        ADD R1,R1,1             ; R1 = 10
        LEA R2,z                ; R2 = 10
        ADD R2,R2,1             ; R2 = 11
        ADD R0,R0,1             ; R0 = 9
        ADD R1,R1,1             ; R1 = 11
        BR end
x:      .FILL x0001
y:      .FILL x0002
z:      .FILL x0003
end:    NOP
        .END