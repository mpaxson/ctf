```language-c
int __cdecl main(int argc, const char **argv, const char **envp)
{
  char v4; // [sp+4h] [bp-424h]@1
  int v5; // [sp+41Ch] [bp-Ch]@1

  v5 = 56797;
  __isoc99_scanf("%s", &v4);
  det(v5);
  return 1;
}
```

```language-c
void __cdecl det(int a1)
{
  char buf; // [sp+Ch] [bp-8Ch]@2
  int fd; // [sp+8Ch] [bp-Ch]@2

  if ( a1 != 56797 )
  {
    puts("GZ, you win!");
    fd = open("./flag.txt", 0);
    read(fd, &buf, 0x80u);
    printf("%s", &buf);
    exit(0);
  }
}
```
