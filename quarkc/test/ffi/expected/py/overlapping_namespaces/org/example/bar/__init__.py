from quark_runtime import *

import quark.reflect
import overlapping_namespace_md


class Bar(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        pass

    def _getClass(self):
        return u"org.example.bar.Bar"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Bar.org_example_bar_Bar_ref = None
