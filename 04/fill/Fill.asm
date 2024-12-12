// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
//螢幕記憶體:16384 - 24575
//鍵盤記憶體:24576
//變黑:-1 變白:0
//RAM記憶體位址:0 - 32767
//原本代碼開始：只會顯示一條線
(START)
@24576
D=M
@16//存放計數器
@16384
M=A// M=16384(指令表M=0 or 1 or -1)
@0
D;JEQ

//變黑
(LOOP)
@16
D=M
@24576
D=D-M
@BLACK
D;JGE


@16384
D=A
M=-1
@16
M=M+1
@LOOP
0;JMP


//變白
(BLACK)
@16384
M=0

//結束
@START
0;JMP

//參考：(nand2tetris chap4)https://www.youtube.com/watch?v=omdZT6IiJrk
//他的 按下會變黑，放開會變白，會連續
//@16384
//D=A
//@0
//M=D
//@24576
//D=M
//@11
//D;JEQ
//@0
//A=M
//M=!M
//@0
//M=M+1
//@4
//0;JMP