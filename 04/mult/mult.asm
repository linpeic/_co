// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R0
D=M
@16 //RAM[16]常用來存放計數器，i
M=1
@R2
M=0

//(LOOP)
@16
D=M
@R1
D=D-M
@22 //@END
D;JGT

@R2
D=M
@R0
D=D+M 
@R2 
M=D

@16
//D=M+1 不能寫這樣，因為這樣RAM[16]的值不會更新(會讀到舊的值)
M=M+1

@6 //@LOOP
0;JMP

//(END)
@22 //@END    
0;JMP


