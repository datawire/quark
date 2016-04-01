from quark_runtime import *

import quark.reflect
import constructors_md


class Base(object):
    def _init(self):
        self.name = u"Hello World!"

    def __init__(self): self._init()

    def _getClass(self):
        return u"test4.Base"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value


Base.test4_Base_ref = constructors_md.Root.test4_Base_md
class Test(Base):
    def _init(self):
        Base._init(self)
        self.mumble = u"lalala"
        self.later = None

    def __init__(self):
        super(Test, self).__init__();
        (self).later = u"Hello World!"

    def _getClass(self):
        return u"test4.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        if ((name) == (u"mumble")):
            return (self).mumble

        if ((name) == (u"later")):
            return (self).later

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

        if ((name) == (u"mumble")):
            (self).mumble = value

        if ((name) == (u"later")):
            (self).later = value


Test.test4_Test_ref = constructors_md.Root.test4_Test_md

def go():
    t = Test();
    _println((t).name);
    _println((Test()).name);
