from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("slackpack")
import quark.reflect
import slack
import slack.event


class Handler(_QObject):
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

def _lazy_import_slackpack_md():
    import slackpack_md
    globals().update(locals())
_lazyImport("import slackpack_md", _lazy_import_slackpack_md)



_lazyImport.pump("slackpack")
