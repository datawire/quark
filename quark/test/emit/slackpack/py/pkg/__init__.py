from quark_runtime import *

import slack
import slack.event


class Handler(object):
    def _init(self): pass
    def __init__(self): self._init()

    def onSlackEvent(self, event):
        _println((event).type);
        if (((event).user) != (None)):
            _println(((event).user).user);

        if (((event).channel) != (None)):
            _println(((event).channel).channel);

    def onHello(self, hello):
        (self).onSlackEvent(hello);

    def onSlackError(self, error):
        (self).onSlackEvent(error);

    def onMessage(self, message):
        (self).onSlackEvent(message);

