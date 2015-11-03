from quark_runtime import *

class side_effects(object):
    def _init(self):
        self.trace = None

    def __init__(self):
        self._init()
        self.trace = u"T"

    def R(self):
        (self).trace = ((self).trace) + (u"R")
        return (self).trace

    def A(self):
        (self).trace = ((self).trace) + (u"A")
        return (self).trace

    def E(self):
        (self).trace = ((self).trace) + (u"CE")
        return (self).trace



def triop(a, b, c):
    if (a):
        return b
    else:
        return c




def main():
    a = side_effects();
    _println((triop(((a).R()) != (u"a"), (a).R(), u"null")) + (triop(((a).A()) != (u"b"), (a).A(), u"null")));
    _println((u"trace: ") + ((a).E()));


if __name__ == "__main__":
    main()
