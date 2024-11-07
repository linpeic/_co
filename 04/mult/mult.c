#include <stdio.h>

int mult(int n){
    int j=2; 
    int i=1;
    int s=0;
LOOP:
    if(i>n) goto END;
    //while(i<=n){
        s=s+j;
        i++;
    //}
    goto LOOP;
END:
    return s;

}
int main(void){
    printf("mult(5)=%d",mult(5));
}