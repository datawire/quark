from quark_runtime import *

import testlib
import t2


def main():
    _println(testlib.test());
    _println(testlib.foo());
    _println(testlib.foo());
    t2.test();
    _println(qux());


def qux():
    return u"moo"
