from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *

import quark.reflect
import generics.constructors
import generics.pkg
import generics.ccc
import quark_ffi_signatures_md


class Box(_QObject):
    def _init(self):
        self.contents = None

    def __init__(self): self._init()

    def set(self, contents):
        pass

    def get(self):
        return _cast(None, lambda: T)

    def _getClass(self):
        return u"generics.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = _cast(value, lambda: T)



class Crate(_QObject):
    def _init(self):
        self.box = None
        self.ibox = None

    def __init__(self): self._init()

    def set(self, stuff):
        pass

    def get(self):
        return _cast(None, lambda: T)

    def _getClass(self):
        return u"generics.Crate<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"box")):
            return (self).box

        if ((name) == (u"ibox")):
            return (self).ibox

        return None

    def _setField(self, name, value):
        if ((name) == (u"box")):
            (self).box = _cast(value, lambda: Box)

        if ((name) == (u"ibox")):
            (self).ibox = _cast(value, lambda: Box)


Crate.generics_Box_quark_Object__ref = None
Crate.generics_Box_quark_int__ref = None
Crate.generics_Crate_quark_Object__ref = None
class Sack(_QObject):
    def _init(self):
        self.ints = None

    def __init__(self): self._init()

    def _getClass(self):
        return u"generics.Sack"

    def _getField(self, name):
        if ((name) == (u"ints")):
            return (self).ints

        return None

    def _setField(self, name, value):
        if ((name) == (u"ints")):
            (self).ints = _cast(value, lambda: Box)


Sack.generics_Sack_ref = None
class Matrix(_QObject):
    def _init(self):
        self.width = None
        self.height = None
        self.columns = None

    def __init__(self, width, height):
        self._init()

    def _q__get__(self, i, j):
        return _cast(None, lambda: T)

    def _q__set__(self, i, j, value):
        pass

    def _getClass(self):
        return u"generics.Matrix<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"width")):
            return (self).width

        if ((name) == (u"height")):
            return (self).height

        if ((name) == (u"columns")):
            return (self).columns

        return None

    def _setField(self, name, value):
        if ((name) == (u"width")):
            (self).width = _cast(value, lambda: int)

        if ((name) == (u"height")):
            (self).height = _cast(value, lambda: int)

        if ((name) == (u"columns")):
            (self).columns = _cast(value, lambda: _List)


Matrix.generics_Matrix_quark_Object__ref = None
Matrix.quark_List_quark_List_quark_Object___ref = None
Matrix.quark_List_quark_Object__ref = None
