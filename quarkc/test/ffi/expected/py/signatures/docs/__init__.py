from quark_runtime import *

import quark.reflect
import quark_ffi_signatures_md


class Test(_QObject):
    """
    hey, here are some docs
    here are some more docs
    a bunch of docs in fact
    """
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def test(self, param):
        """
        method docs
        """
        return 3

    def _getClass(self):
        return u"docs.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


Test.docs_Test_ref = None
