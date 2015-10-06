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

class Test:
    def _init(self): pass
    def __init__(self): self._init()
    
    def test(self):
        _println("Hello World!");
    


def main():
    (Test()).test();


if __name__ == "__main__":
    main()
