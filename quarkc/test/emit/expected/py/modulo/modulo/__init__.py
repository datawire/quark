from quark_runtime import *



def test_modulo(a, b):
    _println(((((str(a)) + (u" % ")) + (str(b))) + (u" = ")) + (str((a) % (b))));

def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    test_modulo(4, 3);
    test_modulo(4, -(3));
    test_modulo(-(4), 3);
    test_modulo(-(4), -(3));
