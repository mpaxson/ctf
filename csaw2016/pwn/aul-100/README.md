# undone

Need to set up local server to run on

Running ./tutorial without any arguments immediately seg faults
```language-bash
λ  ./tutorial
Segmentation fault (core dumped)
```

opening this is ida to see whats going,
seems to take a port number as argument then passes it to privilege
```language-c
signed __int64 __fastcall privilege(const char *a1)
{
  signed __int64 result; // rax@2
  struct passwd *v2; // [rsp+18h] [rbp-8h]@1

  v2 = getpwnam(a1);
  if ( v2 )
  {
    if ( chdir(v2->pw_dir) )
    {
      perror("chdir");
      result = 1LL;
    }
    else if ( setgroups(0LL, 0LL) )
    {
      perror("setgroups");
      result = 1LL;
    }
    else if ( setgid(v2->pw_gid) )
    {
      perror("setgid");
      result = 1LL;
    }
    else if ( setuid(v2->pw_uid) )
    {
      perror("setuid");
      result = 1LL;
    }
    else
    {
      result = 0LL;
    }
  }
  else
  {
    fprintf(stderr, "User %s does not exist\n", a1);
    result = 1LL;
  }
  return result;
}
```
