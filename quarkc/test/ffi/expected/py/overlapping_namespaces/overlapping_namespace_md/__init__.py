from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("overlapping_namespace_md.org_example_bar_Bar_test_Method")
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
class Root(_QObject):
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

def _lazy_import_org_example_bar():
    import org.example.bar
    globals().update(locals())
_lazyImport("import org.example.bar", _lazy_import_org_example_bar)



_lazyImport.pump("overlapping_namespace_md.org_example_bar_Bar_test_Method")
