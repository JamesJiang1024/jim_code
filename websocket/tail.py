import tailer

for line in tailer.follow(open('test.txt')):
    print line
