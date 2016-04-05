#!/usr/bin/env python3
import socketserver
import struct

# NOTE: This is not the real key.  The oracle has the real key.
KEY = 0x0
IV = 0xe6


class Aes2(object):
    """ A submission for a new, improved version of AES.

    This cipher is a substitution permutation network.  It has a 512 bit key
    and an 8 bit IV.  For a given round n:
        - XOR with the IV
        - XOR with key bits n*8:(n+1)*8
        - Run through the SBOX
        - Run through the PBOX

    ---Comparison with AES---

    Key Size: 512 vs 256 bits (max)
    Rounds  : 64 > 14
    Estimated time to bruteforce: 1E138 vs 1E61 Years.
    """

    SBOX = [0xa3, 0x64, 0x47, 0x60, 0x19, 0x35, 0xd1, 0xe4,
            0xac, 0x2c, 0x9b, 0x99, 0x9f, 0x7c, 0xd5, 0x2f,
            0x7b, 0x41, 0x4f, 0xea, 0x1a, 0x0a, 0x16, 0xf6,
            0x09, 0x3b, 0xfb, 0xec, 0x5c, 0xcb, 0x6b, 0x8d,
            0x58, 0xb0, 0x5b, 0x7f, 0xe6, 0xa9, 0x95, 0x51,
            0x70, 0x15, 0xb3, 0xfd, 0xc6, 0x94, 0x8c, 0x55,
            0x0b, 0x14, 0x65, 0x76, 0xb1, 0xd4, 0x49, 0xc7,
            0x8b, 0xcc, 0x73, 0xd3, 0x72, 0xf7, 0x4b, 0x1f,
            0xd9, 0x44, 0xc8, 0x8e, 0xb9, 0x1e, 0xaa, 0xdd,
            0xbd, 0xfc, 0x4c, 0xa4, 0x53, 0x68, 0xda, 0xf5,
            0xd7, 0xd6, 0x63, 0x40, 0x89, 0xcf, 0x46, 0x5f,
            0x79, 0x71, 0xfa, 0xdc, 0x23, 0x3f, 0x8a, 0xb5,
            0x4e, 0x9a, 0xc2, 0x91, 0x82, 0x5e, 0x25, 0x02,
            0x2d, 0x96, 0xb2, 0xb4, 0x21, 0xf1, 0xee, 0xc3,
            0x54, 0xe5, 0x03, 0x61, 0xc0, 0xef, 0x17, 0x8f,
            0x74, 0x38, 0xa8, 0xc4, 0xed, 0xb7, 0x0f, 0x80,
            0x29, 0xbf, 0x9c, 0xa0, 0x5a, 0x78, 0x98, 0xf0,
            0x56, 0x3e, 0xa6, 0x08, 0x7e, 0x1d, 0x3c, 0x57,
            0x59, 0xb6, 0x1c, 0x4a, 0x2a, 0x10, 0xca, 0x27,
            0x39, 0x6f, 0x33, 0x45, 0xf3, 0x28, 0xe3, 0xbe,
            0x2b, 0x11, 0xde, 0xe9, 0xc9, 0x6e, 0xdf, 0x66,
            0x0d, 0xf9, 0x06, 0xf4, 0xf8, 0x77, 0x92, 0x93,
            0x81, 0xce, 0x05, 0x01, 0xbb, 0xe7, 0x32, 0xc1,
            0x48, 0xf2, 0x20, 0x26, 0x50, 0x36, 0xab, 0x52,
            0x67, 0xe2, 0x85, 0xe1, 0xbc, 0x18, 0x83, 0x0c,
            0x90, 0x69, 0x6a, 0xad, 0x9e, 0xcd, 0x2e, 0xff,
            0x37, 0xa2, 0x6d, 0x31, 0xe8, 0x7a, 0x24, 0x1b,
            0x87, 0x12, 0x07, 0x9d, 0x13, 0x6c, 0xe0, 0x0e,
            0x84, 0x75, 0xae, 0xa5, 0xd8, 0x30, 0xdb, 0x62,
            0xfe, 0xa1, 0x42, 0xd2, 0x3a, 0xd0, 0x34, 0xeb,
            0x97, 0xa7, 0x43, 0x88, 0xba, 0x5d, 0xb8, 0x04,
            0x86, 0xc5, 0x7d, 0x4d, 0x22, 0x3d, 0x00, 0xaf]

    SBOX_INV = [0]*256
    for index, value in enumerate(SBOX):
        SBOX_INV[value] = index

    PBOX = [0x4, 0x2, 0x3, 0x7, 0x0, 0x6, 0x5, 0x1]
    PBOX_INV = [0]*8
    for index, value in enumerate(PBOX):
        PBOX_INV[value] = index

    def __init__(self, key, iv):
        self.key = key % (2 ** 512)
        self.iv = iv & 0xFF

    @classmethod
    def _sbox(cls, plaintext):
        return cls.SBOX[plaintext]

    @classmethod
    def _i_sbox(cls, ciphertext):
        return cls.SBOX_INV[ciphertext]

    @classmethod
    def _pbox(cls, plaintext):
        ciphertext = 0x00
        for bit, entry in enumerate(cls.PBOX):
            ciphertext |= (((1 << entry) & plaintext) >> entry) << bit
        return ciphertext

    @classmethod
    def _i_pbox(cls, ciphertext):
        plaintext = 0x00
        for bit, entry in enumerate(cls.PBOX_INV):
            plaintext |= (((1 << entry) & ciphertext) >> entry) << bit
        return plaintext

    def _key_schedule(self):
        key_schedule = []
        for i in range(0, 64):
            key_schedule.append((self.key & (0xFF << (i * 8))) >> (i * 8))
        return key_schedule

    def _encrypt_block(self, plaintext, curr_iv):
        plaintext &= 0xFF
        ciphertext = plaintext ^ curr_iv
        for key_segment in self._key_schedule():
            ciphertext ^= key_segment
            ciphertext = self._sbox(ciphertext)
            ciphertext = self._pbox(ciphertext)
        return ciphertext

    def _decrypt_block(self, ciphertext, curr_iv):
        ciphertext &= 0xFF
        plaintext = ciphertext
        for key_segment in reversed(self._key_schedule()):
            plaintext = self._i_pbox(plaintext)
            plaintext = self._i_sbox(plaintext)
            plaintext ^= key_segment
        plaintext ^= curr_iv
        return plaintext

    def encrypt(self, plaintext):
        ciphertext = []
        iv = self.iv
        for block in plaintext:
            ciphertext_block = self._encrypt_block(block, iv)
            ciphertext.append(ciphertext_block)
        return ciphertext

    def decrypt(self, ciphertext):
        plaintext = []
        iv = self.iv
        for block in ciphertext:
            plaintext_block = self._decrypt_block(block, iv)
            plaintext.append(plaintext_block)
        return plaintext


class Handler(socketserver.BaseRequestHandler):
    """ This server is an oracle that will decrypt messages sent.
        The protocol is a 4 byte big-endian length, followed by the message.
        The server will encrypt it and respond with the ciphertext.
    """

    def handle(self):
        cipher = Aes2(KEY, IV)
        length_bytes = self.request.recv(4)
        length = struct.unpack('>I', length_bytes)[0]
        plaintext = self.recv_n(length)
        plaintext_list = [x for x in plaintext]
        ciphertext_list = cipher.encrypt(plaintext_list)
        ciphertext = bytes(ciphertext_list)
        self.request.sendall(ciphertext)

    def recv_n(self, length):
        data = b''
        while len(data) < length:
            data += self.request.recv(length - len(data))
        return data


class ThreadedTcpServer(socketserver.ThreadingMixIn, socketserver.TCPServer):
    pass


def main():
    server = ThreadedTcpServer(('0.0.0.0', 8764), Handler)
    try:
        server.serve_forever()
    except (SystemExit, KeyboardInterrupt):
        server.shutdown()
        server.server_close()

if __name__ == '__main__':
    main()
