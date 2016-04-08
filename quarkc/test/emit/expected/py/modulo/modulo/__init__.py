from quark_runtime import *



def test_modulo(a, b):
    _println(((((_toString(a)) + (u" % ")) + (_toString(b))) + (u" = ")) + (_toString((a) % (b))));

def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    test_modulo(4, 3);
    test_modulo(4, -(3));
    test_modulo(-(4), 3);
    test_modulo(-(4), -(3));
