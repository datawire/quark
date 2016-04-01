from quark_runtime import *

import pkg


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    box = pkg.StringBox(u"asdf");
    _println((box).contents);
    foo = pkg.StringFoo();
    _println((foo).foo());
