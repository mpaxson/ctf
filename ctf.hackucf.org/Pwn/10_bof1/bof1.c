#include <stdio.h>
#include <stdlib.h>


void win()
{
    FILE *fp = fopen("/home/bof1/flag.txt","r");
	int c;

    if(!fp)
    {
        puts("error, contact admin");
        fflush(stdout);
        exit(0);
    }

    while(1)
    {
        c = fgetc(fp);
        if( feof(fp) )
        {
            break ;
        }
        printf("%c", c);
        fflush(stdout);
    }
    fclose(fp);
    
}

int main(int argc, const char *argv[])
{
	int admin = 0;
	char buf[32];

	scanf("%s", buf);

	if(admin)
	{
        win();

    }
	else
	puts("nope!");
    fflush(stdout);

	return 0;
}
