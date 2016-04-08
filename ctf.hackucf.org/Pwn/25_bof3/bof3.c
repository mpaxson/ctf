#include <stdio.h>
#include <stdlib.h>

void win()
{
    FILE *fp = fopen("/home/bof3/flag.txt","r");

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
void lose()
{
    puts("you suck!\n");
    fflush(stdout);
    exit(0);
}
int main(int argc, const char *argv[])
{
    void (*fp)(); 
    char bof[64];

    fp = &lose;

    scanf("%s",bof);
    fp();
    
    return 0;
}
