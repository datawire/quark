from quark_runtime import *

import quark.reflect
import macro_native_md


class Native(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        n1 = Native();
        n2 = Native();
        n1n2 = Native();
        n3 = n1n2;

    def _getClass(self):
        return u"macro_native.Native"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Native.macro_native_Native_ref = macro_native_md.Root.macro_native_Native_md
