from quark_runtime import *

import test1
import test2
import test3
import test4


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    test1.go();
    test2.go();
    test3.go();
    test4.go();
