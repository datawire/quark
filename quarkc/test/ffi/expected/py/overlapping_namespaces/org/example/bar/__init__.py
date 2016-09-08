from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import overlapping_namespace_md


class Bar(_QObject):
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
