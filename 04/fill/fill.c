#include <stdio.h>
int memory[30000];
int mult(int R1){
    //int R0=2; //@R0,M=2
    int i=16384; //@i,M=16384
    //int R2=0; //@R2,M=0
    int *p = memory;
    int *kbd ;
LOOP:        //(LOOP)
    if(i>24576) goto END;//@i,D=M,@24576,D=D-M,@END,D;JGE
    //n=R1
    //while(i<=n){
        p++;
        if (kbd!=0)
          *p = -1;
        else
          *p = 0;
        //R2=R2+R0;//@R2,D=M,@R0,D=D+M ,@R2 M=D
        i++;//@i,M=M+1
    //}
    goto LOOP;//@LOOP, 0;JMP
END: //(END)
    return; //R2; 
}