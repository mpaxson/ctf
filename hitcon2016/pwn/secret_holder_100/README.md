
There is a check in the `Keep()` function that prevents us from allocating memory that has already been allocated.
You can see in the `Wipe` below that there is a big secret_check and gets set to 0 when a secret is freed.
```language-c
__int64 Wipe()
{
  int v0; // eax@1
  char s; // [rsp+10h] [rbp-10h]@1
  __int64 v3; // [rsp+18h] [rbp-8h]@1

  v3 = *MK_FP(__FS__, 40LL);
  puts("Which Secret do you want to wipe?");
  puts("1. Small secret");
  puts("2. Big secret");
  puts("3. Huge secret");
  memset(&s, 0, 4uLL);
  read(0, &s, 4uLL);
  v0 = atoi(&s);
  switch ( v0 )
  {
    case 2:
      free(big_Secret);
      big_secret_check = 0;
      break;
    case 3:
      free(huge_secret);
      huge_secret_check = 0;
      break;
    case 1:
      free(small_secret);
      small_secret_check = 0;
      break;
  }
  return *MK_FP(__FS__, 40LL) ^ v3;
}
```

```language-bash

Which Secret do you want to renew?

1. Keep secret
2. Wipe secret
3. Renew secret
1
Which level of secret do you want to keep?
1. Small secret
2. Big secret
3. Huge secret
3
Tell me your secret:
aaaaaaaaaa


Which Secret do you want to wipe?
1. Small secret
2. Big secret
3. Huge secret
3
1. Keep secret
2. Wipe secret
3. Renew secret
2
Which Secret do you want to wipe?
1. Small secret
2. Big secret
3. Huge secret
3
Segmentation fault (core dumped)

```
