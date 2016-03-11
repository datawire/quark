from quark_runtime import *



def test_modulo(a, b):
    _println(((((str(a)) + (u" % ")) + (str(b))) + (u" = ")) + (str((a) % (b))));


def main():
    test_modulo(4, 3);
    test_modulo(4, -(3));
    test_modulo(-(4), 3);
    test_modulo(-(4), -(3));
