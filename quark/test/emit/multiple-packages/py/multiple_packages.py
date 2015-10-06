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

import p1




def main():
    ((p1).p2).a();
    ((p1).p2).b();
    (p1).c();
    (p1).d();


if __name__ == "__main__":
    main()
