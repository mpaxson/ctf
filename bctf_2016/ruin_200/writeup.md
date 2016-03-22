# ruin 200

I noticed the binary ruin is in 32 bit arm assembler and was running on a 		#nc 166.111.132.49 9999


in the c file we noticed
		printf("please input your 8-bit key:");
		fread(&unk_10FAC, 1u, 8u, (FILE *)stdin);
		result = strncmp((const char *)&unk_10FAC, "security", 8u);

so we typed in securirty in the prompt

```terminal
nc 166.111.132.49 9999
please input your 8-bit key:security
==============================================
=    Welcome to super security strongbox     =
==============================================
= Update your key to make your secret safer! =
==============================================
1. update key.
2. edit the secret.
3. sign your name.
4. leave & return.
Give me your choice(1-4):wrong choice, select again!
==============================================
=    Welcome to super security strongbox     =
==============================================
= Update your key to make your secret safer! =
==============================================
1. update key.
2. edit the secret.
3. sign your name.
4. leave & return.
Give me your choice(1-4):^C
```

after destripping the assembling we found a heap address in the terminal

```terminal
please input your 8-bit key:adsfsdfdasfsdfasdfadsfsffdasd
adsfsdf@� is wrong, try again!
```

the <b>@�<b>is a memory leak so the idea is that we can use this to find offsets to return to
