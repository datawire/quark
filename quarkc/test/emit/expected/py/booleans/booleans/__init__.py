from quark_runtime import *


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    if (True):
        _println(u"Hi!");

    b = (1) > (0);
    if (b):
        _println(u"Hey!");

    c = False;
    if (not (c)):
        _println(u"Ho!");

    count = 0;
    while (True):
        if ((count) > (3)):
            break;

        count = (count) + (1)

    troo = (True) and (True);
    _println(str(troo).lower());
    fols = (False) or (False);
    _println(str(fols).lower());
    foo = u"foo";
    bar = u"bar";
    if (((foo) == (u"foo")) and ((bar) == (u"bar"))):
        _println(u"foobar!!");

