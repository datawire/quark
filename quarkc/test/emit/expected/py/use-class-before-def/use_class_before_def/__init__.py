from quark_runtime import *

import pkg


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    bar = pkg.Bar();
    (bar).go();
