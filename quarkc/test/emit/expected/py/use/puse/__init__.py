from quark_runtime import *

import testlib
import t2
import foo



def main():
    _println(testlib.test());
    _println(testlib.foo());
    _println(testlib.foo());
    t2.test();
    _println(foo.qux());
