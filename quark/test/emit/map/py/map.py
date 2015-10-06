import os, sys

_Map = dict
class _List(list):
    def __repr__(self):
        return "[%s]" % ", ".join([str(e) for e in self])

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)


def test1():
    map = _Map();
    (map)["pi"] = (3);
    _println((map).get("pi"));


def main():
    test1();


if __name__ == "__main__":
    main()
