        .ORIG x3000
        ADD R0,R0,31
        ADD R0,R0,3     ; R0 devrait valoir 2 et générer un overflow
        ADC R1,R1,0     ; R1 devrait valoir 1 car R0 a fait un overflow
        ADD R2,R1,31    ; R2 devrait valoir 31+1 = 0 [32]
        NOT R3,R1       ; o devrait se mettre à zéro
        ADC R4,R4,1     ; R4 devrait valoir 1 (o mis à 0)
        .END