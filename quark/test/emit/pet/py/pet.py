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

import pets



def main():
    evil = pets.Cat();
    good = pets.Dog();
    (evil).greet();
    (good).greet();


if __name__ == "__main__":
    main()
