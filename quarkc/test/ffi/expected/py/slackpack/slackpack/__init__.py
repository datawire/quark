from quark_runtime import *

import quark.reflect
import slack
import slack.event
import slackpack_md


class Handler(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def onSlackEvent(self, event):
        pass

    def _getClass(self):
        return u"slackpack.Handler"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def onHello(self, hello):
        pass

    def onSlackError(self, error):
        pass

    def onMessage(self, message):
        pass
Handler.slackpack_Handler_ref = None
