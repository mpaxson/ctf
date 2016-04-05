```
kettle@OfKetchup:~/git_repos/ctf.git/H3-2016/look_twice$ binwalk flag.pdf

DECIMAL   	HEX       	DESCRIPTION
-------------------------------------------------------------------------------------------------------
0         	0x0       	gzip compressed data, from Unix, last modified: Sun Mar 27 18:15:07 2016

kettle@OfKetchup:~/git_repos/ctf.git/H3-2016/look_twice$ sudo binwalk flag.pdf

DECIMAL   	HEX       	DESCRIPTION
-------------------------------------------------------------------------------------------------------
0         	0x0       	gzip compressed data, from Unix, last modified: Sun Mar 27 18:15:07 2016

kettle@OfKetchup:~/git_repos/ctf.git/H3-2016/look_twice$ ls
0  challenge.pcapng  flag2.pdf  flag.pdf  look_twice.tar.gz  look_twice.txt  objects  strings.txt  text.txt
kettle@OfKetchup:~/git_repos/ctf.git/H3-2016/look_twice$ strings 0
PaxHeader/flag.txt
000644
777777
000120
00000000170 12676055432 015555
ustar
00kbittick3
admin
000000
000000
17 uid=432015732
20 ctime=1459116826
20 atime=1459116895
23 SCHILY.dev=16777220
22 SCHILY.ino=9313872
18 SCHILY.nlink=1
flag.txt
000644
	t000120
00000000026 12676055432 013760
ustar
00kbittick3
admin
000000
000000
The flag is: F4794734
```
