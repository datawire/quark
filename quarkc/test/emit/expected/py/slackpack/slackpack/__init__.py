from quark_runtime import *

import slack
import pkg


def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    cli = slack.Client(None, u"fake-token", pkg.Handler());
    (cli).onWSMessage(None, u"{\"type\": \"hello\"}");
    (cli).onWSMessage(None, u"{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");
