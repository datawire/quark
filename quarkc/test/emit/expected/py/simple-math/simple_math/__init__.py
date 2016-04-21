from quark_runtime import *


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    four = (2) + (2);
    _println(_toString(four));
    half = (1) / (2);
    _println(_toString(half));
    num = 314.0;
    den = 100.0;
    pi = float(num) / float(den);
    _println(repr(pi));
    pie = 3.14;
    _println(repr(pie));
    n = (-(100)) / (3);
    _println(_toString(n));
    m = (100) / (-(3));
    _println(_toString(m));
    l = (100) % (3);
    _println(_toString(l));
    k = (-(100)) % (3);
    _println(_toString(k));
