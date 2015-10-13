from quark_runtime import *


def test1():
    map = _Map();
    (map)["pi"] = (3);
    _println((map).get("pi"));


def test_update():
    first = _Map();
    second = _Map();
    (first)["a"] = ("first_a");
    (first)["b"] = ("first_b");
    (second)["b"] = ("second_b");
    (second)["c"] = ("second_c");
    (first).update(second);
    _println((first).get("a"));
    _println((first).get("b"));
    _println((first).get("c"));


def main():
    test1();
    test_update();


if __name__ == "__main__":
    main()
