from quark_runtime import *

import p1.p2
import p1


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    p1.p2.a();
    p1.p2.b();
    p1.c();
    p1.d();
