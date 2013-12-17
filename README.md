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
I placed a 3-bits register called NZP.
Assuming RES’s bit 15 gives the sign, the circuit computes if RES is negative (bit 15 is 1), null (all bits are 0), or positive (bit 15 is 0, but at least one other is 1). This gives 3 bits matching NZP states. If WriteReg is active, the state given by RES will be written is the register NZP. 
On the other hand, we check if NZP matches IR’s bits for nzp (bits 11|10|9). If every condition is verified, TestNZP will be active (no matter if the instruction really needs NZP, it is checked somewhere else).

##ALU

##GetAddr

##RegPC


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

