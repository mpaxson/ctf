# bof 1

first thing to do is check the security features of the binary.
### no aslr

this means that memory is not randomized and there's a global win variable


## usual goal

1. fill the buffer
2. overrite the return address with the address of win
	3. use gdb pattern search to find offset
3. win the game


## instead theres a buffer overflow that checks to see if a value in memory has a flag. Basically enter 33 '1's and you'll get the flag


```
kettle@OfKetchup:~/git_repos/ctf.git/ctf.hackucf.org/Pwn/bof1$ nc ctf.hackucf.org 9000
11111111111111111111111111111111111111111111111111111111111111111111
flag{KettleOfKetchup}


```
