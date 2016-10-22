# 75 mem_test

We are given a binary, and running the application gives us the following output after entering aaaa

```language-bash
------Test Your Memory!-------

8bGyUdjA5Z
I know that mine is fine...see? : 0x8048980
Let's see how good your memory is...

>aaa
sorry, your memory sucks
```
So straight away it seems like we are given two memory addressed and we have to use them some how. We are given the c-code below as well.

Taking a look at the c-code (also given at the bottom), we see a global variable `hint` and that the memory address is being leaked with `printf("%p \n", hint);`

and that the that the outputted `8bGyUdjA5Z` is a randomly generated canary. Our input is checked against the canary here as well..
```language-c
if(strncmp(buff, p, sizeof(p)) != 0) {
	puts("sorry, your memory sucks\n");
}else {
	puts("good job!!\n");
}
```

# Exploit
So the exploit steps are
1. Grab the canary
2. Grab the address of the hint so we can go to the win function right bellow
    - ```lanauge-c
    const char* hint = "/bin/sh";
    void mem_test(char* p) {
    ```
3. Find buffersize to overwrite the return address
    - `gdb-peda$ pattern_create 100 FILE
4. Overflow the buffer with the address of `hint` + offset into the win_function
5. Celebrate 
```language-python

```







The entire c code

```language-c
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
	}else {
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
```
