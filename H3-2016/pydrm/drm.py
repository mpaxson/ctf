#!/usr/bin/env python3
# from dis import dis
import socketserver
import types


class RequestHandler(socketserver.BaseRequestHandler):

    def handle(self):
        self.request.sendall(b'PyDRM Proof of Concept version 0.7\n')
        self.request.sendall(
            b'Submit the secret password to retrieve the flag:\n')
        user_input_bytes = self.request.recv(4096).strip()
        user_input = user_input_bytes.decode('utf-8', 'ignore')
        if validate_password(user_input):
            self.request.sendall(read_flag())
        else:
            self.request.sendall(b'Invalid password\n')


class RequestServer(socketserver.ThreadingMixIn, socketserver.TCPServer):
    pass


def read_flag():
    with open('flag.txt', 'rb') as fh:
        return fh.read()


def generate_validation_function():
    code_obj = types.CodeType(
        1,
        0,
        5,
        32,
        67,
        b'd\x01\x00d\x02\x00d\x03\x00d\x04\x00d\x05\x00d\x06\x00d\x05\x00d\x07'
        b'\x00d\x08\x00d\x05\x00d\t\x00d\x08\x00d\n\x00d\x01\x00d\x07\x00d\x07'
        b'\x00d\x01\x00d\x0b\x00d\x08\x00d\x07\x00d\x0c\x00d\r\x00d\x0e\x00d'
        b'\x08\x00d\x05\x00d\x0f\x00d\x03\x00d\x04\x00d\x05\x00d\x06\x00d\x05'
        b'\x00d\x07\x00g \x00}\x01\x00g\x00\x00}\x02\x00x+\x00|\x01\x00D]#\x00'
        b'}\x03\x00|\x02\x00j\x00\x00t\x01\x00t\x02\x00|\x03\x00\x83\x01\x00d'
        b'\x10\x00\x18\x83\x01\x00\x83\x01\x00\x01qs\x00Wd\x11\x00j\x03\x00|'
        b'\x02\x00\x83\x01\x00}\x04\x00|\x00\x00|\x04\x00k\x02\x00r\xb9\x00d'
        b'\x12\x00Sd\x13\x00S',
        (None, '\x87', '\x9a', '\x92', '\x8e', '\x8b', '\x85', '\x96', '\x81',
         '\x95', '\x84', '\x94', '\x8a', '\x83', '\x90', '\x8f', 34, '', True,
         False),
        ('append', 'chr', 'ord', 'join'),
        ('a', 'b', 'c', 'd', 'e'),
        'drm.py',
        'validate_password',
        5,
        b'\x00\x01$\x01$\x01\x1e\x01\x06\x01\r\x01!\x01\x0f\x01\x0c\x01\x04'
        b'\x01',
        (),
        ()
    )
    func_obj = types.FunctionType(code_obj, globals())
    return func_obj


def main():
    setattr(__import__(__name__), 'validate_password',
            generate_validation_function())
    server = RequestServer(('0.0.0.0', 8765), RequestHandler)
    try:
        server.serve_forever()
    except (SystemExit, KeyboardInterrupt):
        server.shutdown()
        server.server_close()

if __name__ == '__main__':
    main()
