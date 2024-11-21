#include <stdio.h>

int mult(int R1){
    int R0=2; //@R0,M=2
    int i=1; //@i,M=1
    int R2=0; //@R2,M=0
LOOP:        //(LOOP)
    if(i>R1) goto END;//@i,D=M,@R1,D=D-M,@END,D;JGT
    //n=R1
    //while(i<=n){
        R2=R2+R0;//@R2,D=M,@R0,D=D+M ,@R2 M=D
        i++;//@i,D=i+1
    //}
    goto LOOP;//@LOOP, 0;JMP
END: //(END)
    return R2; 

}
int main(void){
    printf("mult(5)=%d",mult(5));
}