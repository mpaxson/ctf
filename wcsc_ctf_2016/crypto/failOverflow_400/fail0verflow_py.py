#!/usr/bin/env python3
import signal
import socketserver as ss
from os import urandom
from Crypto.PublicKey import ElGamal
from Crypto.Util import number
from secret import FLAG

PORT = 12345

def encode_message(m):
    return number.bytes_to_long(m)

def decode_message(m):
    return number.long_to_bytes(m)

def encrypt(m):
    pt = encode_message(m)
    return pubkey.encrypt(pt, K)

def recvline(req):
    buf = b""
    while not buf.endswith(b"\n"):
        buf += req.recv(1)
    return buf

print("Now generating keys...")

privkey = ElGamal.generate(384, urandom)
pubkey = privkey.publickey()
(p, g, y) = (pubkey.p, pubkey.g, pubkey.y)


K = number.getPrime(128, urandom)
while number.GCD(K, p-1) != 1:
    print("[-] K not relatively prime with {}".format(p-1))
    K = number.getPrime(128, urandom)

print("Encrypting FLAG...")

c1, c2 = encrypt(FLAG)

print("Done!")

class RequestHandler(ss.BaseRequestHandler):
    def handle(self):
        req = self.request
        signal.alarm(5)

        req.sendall(b"Welcome to the WCSC encryption service\n")
        req.sendall(b"Our public key for today is\n")
        req.sendall("p={}\n".format(p).encode("utf-8"))
        req.sendall("g={}\n".format(g).encode("utf-8"))
        req.sendall("y={}\n\n".format(y).encode("utf-8"))

        req.sendall(b"The secret message is\n")
        req.sendall("c1={}\n".format(c1).encode("utf-8"))
        req.sendall("c2={}\n\n".format(c2).encode("utf-8"))

        req.sendall(b"Send me a message to encrypt:\n")
        msg = recvline(req).strip()

        C1, C2 = encrypt(msg)
        req.sendall(b"Here's your encrypted message:\n")
        req.sendall("C1={}\n".format(C1).encode("utf-8"))
        req.sendall("C2={}\n\n".format(C2).encode("utf-8"))

        req.sendall(b"Bye!\n")
        req.close()

class TCPServer(ss.ForkingMixIn, ss.TCPServer):
    pass


ss.TCPServer.allow_reuse_address = True
server = TCPServer(("0.0.0.0", PORT), RequestHandler)

print("Server listening on port {}".format(PORT))
server.serve_forever()