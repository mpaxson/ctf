



## Vunerable Function

```language-c
int handle_connection(){
  char v1; // [esp+Ch] [ebp-6Ch]@1

  printf("buf: %p\n", &v1);
  scanf("%s", &v1);
  return puts("returning NOW");
}
```
## gdb-peda finding buffer size

```
Legend: code, data, rodata, value
Stopped reason: SIGSEGV
0x41384141 in ?? ()
gdb-peda$ pattern search
Registers contain pattern buffer:
ECX+52 found at offset: 69
EIP+0 found at offset: 112
EBP+0 found at offset: 108
Registers point to pattern buffer:
[ESP] --> offset 116 - size ~203
```


