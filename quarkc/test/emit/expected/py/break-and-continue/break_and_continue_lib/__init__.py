from quark_runtime import *


def main():
    stuff = _List([u"one", u"two", u"three", u"four"]);
    idx = 0;
    while (True):
        s = (stuff)[idx];
        if ((s) == (u"three")):
            _println(u"breaking");
            break;

        _println(u"not breaking");
        idx = (idx) + (1)

    idx = 0
    loop = True;
    while (loop):
        s2 = (stuff)[idx];
        if ((s2) != (u"three")):
            idx = (idx) + (1)
            _println(u"continuing");
            continue;

        _println(u"not continuing");
        loop = False

