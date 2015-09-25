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

import test

def main():
    (test).go();
    ((test).test).go();
    t1 = test.Test();
    t2 = test.test.Test();
    (t1).go();
    (t2).go();
