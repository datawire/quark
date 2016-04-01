from quark_runtime import *

import testlib
import t2
import foo


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    _println(testlib.atest());
    _println(testlib.foo());
    _println(testlib.foo());
    t2.atest();
    _println(foo.qux());
