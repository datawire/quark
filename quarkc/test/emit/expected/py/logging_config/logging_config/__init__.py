from quark_runtime import *

import quark.concurrent


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    (((_LoggerConfig.config()).setAppender(_LoggerConfig.stdout())).setLevel(u"DEBUG")).configure();
    l = (quark.concurrent.Context.runtime()).logger(u"hello");
    (l).trace(u"Should not see trace log");
    (l).debug(u"Debug log");
    (l).info(u"Info log");
    (l).error(u"Error log");
