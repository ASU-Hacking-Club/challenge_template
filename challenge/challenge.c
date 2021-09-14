#include <stdio.h>
#include <stdlib.h>

int main()
{
    setbuf(stdin, NULL);
    printf("This is a test challenge\n");
    system("whoami");
}
