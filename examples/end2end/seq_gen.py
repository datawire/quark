# Squares stuff

import sys
sys.path.append("./out")

from franz import Queue


def main():
    q = Queue("http://127.0.0.1:8080/simple")
    tracked = {}
    while True:
        pieces = q.pop().split(":")
        print "popped", pieces
        tag = pieces[0]
        if tag in tracked:
            value = pieces[1]
            if value == "done":
                tracked.pop(tag)
            else:
                value = int(value)
                if value < tracked[tag]:
                    q.push(tag + ":" + str(value+1))
                else:
                    q.push(tag + ":done")
        elif tag == "sequence":
            tag = pieces[2]
            tracked[tag] = int(pieces[1])
            q.push(tag + ":0")


if __name__ == '__main__':
    main()
