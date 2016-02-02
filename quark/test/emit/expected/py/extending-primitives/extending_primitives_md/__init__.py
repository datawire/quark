from quark_runtime import *

import builtin.reflect


class pkg_C_event1_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(pkg_C_event1_Method, self).__init__(u"builtin.void", u"event1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).event1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class pkg_C(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(pkg_C, self).__init__(u"pkg.C");
        (self).name = u"pkg.C"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pkg_C_event1_Method()])

    def construct(self, args):
        return pkg.C()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_C.singleton = pkg_C()

class Root(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Root.pkg_C_md = pkg_C.singleton

import pkg
