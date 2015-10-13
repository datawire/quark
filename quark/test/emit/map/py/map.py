from quark_runtime import *


def test1():
    map = _Map();
    (map)["pi"] = (3);
    _println((map).get("pi"));


def main():
    test1();


if __name__ == "__main__":
    main()
