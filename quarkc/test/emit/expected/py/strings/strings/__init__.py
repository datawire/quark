from quark_runtime import *


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    _println(u"\"");
    _println(u"\"\"");
    _println(u"\u0000");
    _println(u"\u00FF");
    _println(u"\u00ff");
    _println(u"\xFF");
    _println(u"\xff");
    _println(u"\n");
