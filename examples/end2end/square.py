# Squares stuff

import sys
sys.path.append("./out")

from importable import Queue


def main():
    q = Queue("http://127.0.0.1:8080/simple")
    tracked = set()
    while True:
        pieces = q.pop().split(":")
        if pieces[0] in tracked:
            if pieces[1] == "done":
                tracked.remove(pieces[0])
            else:
                value = int(pieces[1])
                q.push("squared:" + pieces[0] + ":" + str(value * value))
        elif pieces[0] == "square":
            tracked.add(pieces[1])


if __name__ == '__main__':
    main()
