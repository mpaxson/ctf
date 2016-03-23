# stack 1

easy buffer overflow

- compare statement in assembly for 1
	- payload needs to start with 1
- buffsize found to be 64 bits
	- filler 64 characters long: 'a'*64
- hard coded canary as "0x61626364"
	- little endian: 'dcba'

## final payload

	python exploit1.py | ./stack1
