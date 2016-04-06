#!/usr/bin/env python

from franz import Topic


def main():
    topic = Topic("http://127.0.0.1:8080", "t")
    topic.push("sequence:10:fdsa")
    topic.push("square:fdsa")


if __name__ == "__main__":
    main()