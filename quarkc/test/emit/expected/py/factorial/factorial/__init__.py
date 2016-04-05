from quark_runtime import *



def factorial(n):
    if ((n) == (0)):
        return 1
    else:
        return (n) * (factorial((n) - (1)))


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    _println(factorial(1));
    _println(factorial(2));
    _println(factorial(3));
    _println(factorial(4));
    _println(factorial(5));
    _println(factorial(6));
    _println(factorial(7));
    _println(factorial(8));
    _println(factorial(9));
    _println(factorial(10));
