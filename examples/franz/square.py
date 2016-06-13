from franz import Topic


def main():
    t = Topic("http://127.0.0.1:8080", "t")
    tracked = set()
    while True:
        pieces = t.pop().split(":")
        print pieces
        if pieces[0] in tracked:
            if pieces[1] == "done":
                tracked.remove(pieces[0])
            else:
                value = int(pieces[1])
                t.push("squared:" + pieces[0] + ":" + str(value * value))
        elif pieces[0] == "square":
            tracked.add(pieces[1])


if __name__ == '__main__':
    main()
