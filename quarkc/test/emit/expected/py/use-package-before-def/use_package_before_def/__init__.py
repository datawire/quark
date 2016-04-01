from quark_runtime import *

import test


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    test.go();
