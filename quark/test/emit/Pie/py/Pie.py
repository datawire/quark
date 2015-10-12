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

class Pie(object):
    def _init(self): pass
    def __init__(self): self._init()
    
    
    def test(self):
        p = Pie();
        x = 3;
    


def main():
    _println(3);


if __name__ == "__main__":
    main()
