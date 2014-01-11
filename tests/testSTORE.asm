        .ORIG x0000
        ADD R0,R0,5
        ST  R0,n
        ADD R1,R1,23
        STR R1,R0,1
        BR end    
n:      .FILL 8                 ;doit valoir 5 après ST
        .FILL 15                ;doit valoir 23 après STR
end:    NOP
        .END