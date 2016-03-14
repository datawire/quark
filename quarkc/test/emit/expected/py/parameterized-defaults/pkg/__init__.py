from quark_runtime import *

import quark.reflect
import parameterized_defaults_md


class Foo(object):

    def foo(self):
        return self.get()

    def get(self):
        assert False

Foo.pkg_Foo_quark_Object__ref = parameterized_defaults_md.Root.pkg_Foo_quark_Object__md
class StringFoo(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def get(self):
        return u"fdsa"

    def _getClass(self):
        return u"pkg.StringFoo"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

    def foo(self):
        return self.get()

StringFoo.pkg_StringFoo_ref = parameterized_defaults_md.Root.pkg_StringFoo_md
class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self, contents):
        self._init()
        (self).contents = contents

    def _getClass(self):
        return u"pkg.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = value

    

class StringBox(Box):
    def _init(self):
        Box._init(self)

    def __init__(self, contents):
        super(StringBox, self).__init__(contents);

    def _getClass(self):
        return u"pkg.StringBox"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = value

    
StringBox.pkg_Box_quark_String__ref = parameterized_defaults_md.Root.pkg_Box_quark_String__md
StringBox.pkg_StringBox_ref = parameterized_defaults_md.Root.pkg_StringBox_md
