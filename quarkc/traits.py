from .match import *

COMPILER = trait("compiler")

def cmatch(*args):
    return match(COMPILER, *args)
