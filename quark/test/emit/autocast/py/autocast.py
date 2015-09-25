import os, sys

_Map = dict
_List = list

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)


def test():
    o = "Hello World!";
    s = o;
    s2;
    s2 = o
