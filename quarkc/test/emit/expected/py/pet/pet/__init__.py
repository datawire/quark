from quark_runtime import *

import pets



def main():
    evil = pets.Cat();
    good = pets.Dog();
    (evil).greet();
    (good).greet();
