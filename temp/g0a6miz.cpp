#include<stdio.h>
int main()
{
    int x1=25;
    int *x;
    x=&x1;
    printf("%u",**x);
    printf("\n%d",*x);
    return 0;
}
