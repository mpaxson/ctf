#include <stdio.h>
#include <stdlib.h> 


void win()
{
    char c;

    FILE * fp = fopen("/home/bof2/flag.txt","r");
    if(!fp)
    {
        puts("error, contact admin");
        fflush(stdout);
        exit(0);
    }
    while(!feof(fp))
    {
        printf("%c",fgetc(fp));
        fflush(stdout);
    }
    fclose(fp);

    
    
}

int main(int argc, const char *argv[])
{
    int correct = 0;
    char bof[64];

    scanf("%s",bof);

    if(correct != 0xdeadbeef)
    {
        puts("you suck!\n");
        fflush(stdout);
        exit(0);
    }
    win();
    return 0;
}
