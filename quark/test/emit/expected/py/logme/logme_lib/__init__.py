from quark_runtime import *

import builtin.concurrent


def main():
    l = (builtin.concurrent.Context.runtime()).logger(u"logme");
    (l).error(u"logme error");
