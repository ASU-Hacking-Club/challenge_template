#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 1);
    printf("This is a test challenge\n");
    char* argv[] = {"cat", "/home/ctf/flag.txt", NULL }; 
    execve("/bin/cat", argv, 0); 
}
