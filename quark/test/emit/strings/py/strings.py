from quark_runtime import *


def test_split():
    chunk = "a:b:c:d:e:f";
    sep = ":";
    pieces = (chunk).split(sep);
    _println(("size: ") + (str(len(pieces))));
    i = 0;
    while ((i) < (len(pieces))) :
        _println((((("piece[") + (str(i))) + ("] = '")) + ((pieces)[i])) + ("'"));
        i = (i) + (1)



def main():
    test_split();


if __name__ == "__main__":
    main()
