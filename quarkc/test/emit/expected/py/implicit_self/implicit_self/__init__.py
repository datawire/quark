from quark_runtime import *

import quark.reflect
import implicit_self_md


class Foo(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def next(self):
        pass

    def test(self):
        self.next();

    def _getClass(self):
        return u"implicit_self.Foo"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Foo.implicit_self_Foo_ref = implicit_self_md.Root.implicit_self_Foo_md
