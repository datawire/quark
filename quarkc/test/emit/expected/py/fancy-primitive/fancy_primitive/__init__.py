from quark_runtime import *


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    s = _List([1, 2, 3]);
    _println(s);
