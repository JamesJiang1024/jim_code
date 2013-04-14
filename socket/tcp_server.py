#!/usr/bin/env python

import socket
from time import ctime


HOST='0.0.0.0'
PORT=21567
BUFSIZ=1024
ADDR=(HOST, PORT)

tcpSerSock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
tcpSerSock.bind(ADDR)
tcpSerSock.listen(5)


while True:
    print 'waiting for connections ...'
    tcpCliSock, addr = tcpSerSock.accept()
    print '....connected from:', addr

    while True:
        data = tcpCliSock.recv(BUFSIZ)
        if not data:
            break
        print data
        tcpCliSock.send('[%s] %s' % (ctime(), data))
    tcpSerSock.close()
