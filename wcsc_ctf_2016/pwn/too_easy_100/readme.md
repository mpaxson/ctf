---

This one as the name suggests, was incredibly easy and honestly probably worth too many points, but here's a writeup regardless.


So we are given a binary tooEasy and was told that 
| Challenge by: nullp0inter
| This one is almost too easy, get the flag!
| nc wcscctf.org 8383

Opening up the binary in ida we see two functions of note, `main` and `det`, generated c code at the bottom of this post.

In main buffer is allocated to **0x424** (or (1060)<sup>10</sup> in decimal)

The variable (not originally named this) called `overWriteThisSheet` is allocated right after buffer. 
`overWriteThisSheet = 56797;` happens in `main`. 

Now looking at `det` we see that `verWriteThisShit` is passed to the function and has a simple check to see if it is the originally set value, **56797**. 

So even though the python script to run this like a normal exploit, it would be easier to just use `python -c '"a"*1070' ` and pipe the output to `nc wcscctf.org 8383`

```language-c
int  main(int argc, const char **argv, const char **envp)
{
  char buffer; // [sp+4h] [bp-424h]
  int overWriteThisSheet; // [sp+41Ch] [bp-Ch]

  overWriteThisSheet = 56797;
  __isoc99_scanf("%s", &buffer);
  det(overWriteThisSheet);
  return 1;
}
```

```language-c
void det(int overWriteThisSheet)
{
  char buf; // [sp+Ch] [bp-8Ch]@2
  int fd; // [sp+8Ch] [bp-Ch]@2

  if ( overWriteThisSheet != 56797 )
  {
    puts("GZ, you win!");
    fd = open("./flag.txt", 0);
    read(fd, &buf, 0x80u);
    printf("%s", &buf);
    exit(0);
  }
}
```
