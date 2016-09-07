from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import org_example_foo_md


class Foo(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        pass

    def _getClass(self):
        return u"org.example.foo.Foo"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Foo.org_example_foo_Foo_ref = None
