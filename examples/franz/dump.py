#!/usr/bin/env python

import time

from franz import Topic


def main():
    counter = 0
    topic = Topic("http://127.0.0.1:8080", "t")
    while True:
        value = topic.pop()
        print("{}: {} {}".format(topic.name, counter, value))
        counter += 1
        time.sleep(1)


if __name__ == "__main__":
    main()