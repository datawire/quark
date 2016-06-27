from quark_runtime import *

import quark.reflect

class org_example_bar_Bar_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(org_example_bar_Bar_test_Method, self).__init__(u"quark.void", u"test", _List([]));

    def invoke(self, object, args):
        obj = _cast(object, lambda: org.example.bar.Bar);
        (obj).test();
        return None

    def _getClass(self):
        return _cast(None, lambda: unicode)

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class org_example_bar_Bar(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(org_example_bar_Bar, self).__init__(u"org.example.bar.Bar");
        (self).name = u"org.example.bar.Bar"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([org_example_bar_Bar_test_Method()])
        (self).parents = _List([u"quark.Object"])

    def construct(self, args):
        return org.example.bar.Bar()

    def isAbstract(self):
        return False

    def _getClass(self):
        return _cast(None, lambda: unicode)

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
org_example_bar_Bar.singleton = org_example_bar_Bar()
class Root(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return _cast(None, lambda: unicode)

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Root.org_example_bar_Bar_md = org_example_bar_Bar.singleton

import org.example.bar
