#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

void main(void)
{
//	char *argv[] = {"./qemu-mips", "-L", "./", "-nopie", "-nx", "-wxorx", "./bender_safe", NULL};
	char *argv[] = {"./qemu-mips", "-L", "./", "-nx", "./bender_safe", NULL};
	char *envp[] =
	{
        "HOME=/",
        "USER=bender",
        0
	};

	chdir("/home/bender/challenge");
	if (access("dev/urandom", F_OK) != 0)
	{
		printf("Ooops, contact admins\n");
		exit(-1);
	}
	if ( chroot("/home/bender/challenge") == 0 )
		execve(argv[0], argv, envp);
	printf("Error chrooting, contact admins\n");
	exit(-1);
}
