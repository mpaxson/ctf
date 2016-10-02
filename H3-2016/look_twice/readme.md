Was given a [pcap] file  of packet captures. Found a [pdf] that was transfered in the packets and was able to extract it. Then used binwalk on the pdf and the below is my bash output

```lanuage-bash
$ binwalk flag.pdf

DECIMAL     HEX         DESCRIPTION
--------------------------------------------
0           0x0         gzip compressed data,

$ ls
0  challenge.pcapng    flag.pdf  look_twice.tar.gz

$ strings 0 | grep "flag"
PaxHeader/flag.txt
flag.txt
The flag is: {{FLAG}}
```
Strings OP

[pcap]: https://github.com/mpaxson/ctf/raw/master/H3-2016/look_twice/challenge.pcapng
[pdf]: https://github.com/mpaxson/ctf/blob/master/H3-2016/look_twice/flag.pdf
