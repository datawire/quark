from quark_runtime import *

import m


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    m.test_marshalling();
