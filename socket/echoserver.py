import eventlet


def handle(fd):
    print "client connected"
    while True:


print "server socket listen on port 6000"

server = eventlet.listen("0.0.0.0", 6000)
pool = eventlet.GreenPool()
while True:
    try:
        newsock, address = server.accept()
        print "accepted", address
        pool.spawn_n(handle, newsock)
    except (SystemExit, KeyboardInterrupt):
        break
