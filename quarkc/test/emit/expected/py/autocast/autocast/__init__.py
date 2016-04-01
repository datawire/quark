from quark_runtime import *



def foo(s):
    _println(s);

def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    o = u"Hello World!";
    s = o;
    s2 = None;
    s2 = o
    foo(o);
