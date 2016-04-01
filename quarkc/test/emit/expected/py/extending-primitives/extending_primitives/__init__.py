from quark_runtime import *

import pkg


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    c = pkg.C();
    (c).event1();
    (c).event2();
    (c).run();
