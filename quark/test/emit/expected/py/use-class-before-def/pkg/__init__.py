from quark_runtime import *

import builtin.reflect
import use_class_before_def_md


class Bar(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def go(self):
        foo = Foo();
        (foo).name = u"bob"
        _println((foo).name);

    def _getClass(self):
        return u"pkg.Bar"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Bar.pkg_Bar_ref = use_class_before_def_md.Root.pkg_Bar_md
class Foo(object):
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def _getClass(self):
        return u"pkg.Foo"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = value

    
Foo.pkg_Foo_ref = use_class_before_def_md.Root.pkg_Foo_md

def main():
    bar = Bar();
    (bar).go();
