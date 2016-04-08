from quark_runtime import *


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    a = 2;
    b = 2;
    _println(_toString((a) + (b)));
