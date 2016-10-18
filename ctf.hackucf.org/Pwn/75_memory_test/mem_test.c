#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "pwnable_harness.h"

const char* hint = "/bin/sh";

void mem_test(char* p) {
	char buff[11];
	memset(buff, '\0', sizeof(buff));
	
	printf("\nI know that mine is fine...see? : ");
	printf("%p \n", hint);
	
	puts("Let's see how good your memory is...\n");
	printf("> ");
	scanf("%s", buff);
	
	if(strncmp(buff, p, sizeof(p)) != 0) {
		puts("sorry, your memory sucks\n");
	}
	else {
		puts("good job!!\n");
	}
}

void handle_connection(int sock) {
	int len = 10;
	char random[11];
	int i;
	static const char alphanum[] =
		"0123456789"
		"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		"abcdefghijklmnopqrstuvwxyz";
	
	
	puts("\n\n\n------Test Your Memory!-------\n");
	
	srand(time(NULL));
	
	for(i = 0; i < len; ++i) {
		random[i] = alphanum[rand() % (sizeof(alphanum) - 1)];
	}
	
	printf("%s", random);
	mem_test(random);
}

void win_func(char* y) {
	system(y);
}


int main(int argc, char** argv) {
	/* Defaults: Run on port 9004 for 30 seconds as user "ctf_mem_test" in a chroot */
	server_options opts = {
		.user = "ctf_mem_test",
		.chrooted = true,
		.port = 9004,
		.time_limit_seconds = 30
	};
	
	return server_main(argc, argv, opts, &handle_connection);
}
