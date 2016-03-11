from quark_runtime import *

import builtin.reflect


class macro_stuff_Macro_test_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(macro_stuff_Macro_test_Method, self).__init__(u"builtin.void", u"test", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class macro_stuff_Macro(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(macro_stuff_Macro, self).__init__(u"macro_stuff.Macro");
        (self).name = u"macro_stuff.Macro"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([macro_stuff_Macro_test_Method()])

    def construct(self, args):
        return macro_stuff.Macro()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
macro_stuff_Macro.singleton = macro_stuff_Macro()

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
Root.macro_stuff_Macro_md = macro_stuff_Macro.singleton

import macro_stuff
