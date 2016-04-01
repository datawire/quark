from quark_runtime import *

import pets


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    evil = pets.Cat();
    good = pets.Dog();
    (evil).greet();
    (good).greet();
