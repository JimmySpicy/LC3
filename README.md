LC3
===

LC-3 processor
===

#Modules

##DecodeIR
DecodeIR has been completed simply by testing bits 13-12 (meaning the second part of the op-code). They give the family of the instruction : 01 for Arith, 00 for Jump, 10 for Load, 11 for Store.  
At the beginning, I was using AND gates with NOT for the 0. Thus, Arith was 
*AND(NOT(13),12)*. But I changed this for NOR gates, using the dual thought : Arith is *NOR(13,NOT(12))*.  
WriteReg is active if the instruction is a Load or an Arith.

##NZP
I placed a 3 1-bit registers called N, Z and P.
Assuming RES’s bit 15 gives the sign, the circuit computes if RES is negative (bit 15 is 1), null (all bits are 0), or positive (bit 15 is 0, but at least one other is 1). This gives 3 bits matching NZP states. If WriteReg is active, the state given by RES will be written is the register NZP. 
On the other hand, we check if NZP matches IR’s bits for nzp (bits 11|10|9). If every condition is verified, TestNZP will be active (no matter if the instruction really needs NZP, it is checked somewhere else).

##ALU

##RegPC
First, RegPC computes PC+1. We then compute PC+[SEXT(off9)] for BR. I placed a multiplexer here, because if BR's test fails, the next adresse should be PC+1 anyway. 
We check after what kind of jump we have thanks to the opcode, controlling a plexer : if it is a BR, we choose either PC+1 of PC+[SEXT-off9)], depending on the previous result; if it is a JMP, we just choose the register. 
Finally, a third multiplexer chosses the final value of PC : if the instruction is not even a jump, the new PC should be PC+1. Otherwise, it takes the previous value : PC+1 (BR failed), PC+SEXT(off9) (BR matches), Reg (JMP).

##GetAddr



===
#Instructions

##LEA
not implemented

##LDR
not implemented

##STR
not implemented

##LD
not implemented

##ST
not implemented

##BR
not implemented

##JMP
not implemented

##ADC
not implemented

##JSR
not implemented

##JSRR
not implemented

##LDI
not implemented

##STI
not implemented

===
#Tests

##LEA

##STR

##LD

##ST

##BR

##JMP

##ADC

##JSR

##JSRR

##LDI

##STI

