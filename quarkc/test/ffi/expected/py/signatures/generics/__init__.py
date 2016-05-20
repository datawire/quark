from quark_runtime import *

import quark.reflect
import constructors
import pkg
import ccc
import quark_ffi_signatures_md


class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self): self._init()

    def set(self, contents):
        pass

    def get(self):
        return None

    def _getClass(self):
        return u"generics.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = value



class Crate(object):
    def _init(self):
        self.box = None
        self.ibox = None

    def __init__(self): self._init()

    def set(self, stuff):
        pass

    def get(self):
        return None

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
            (self).box = value

        if ((name) == (u"ibox")):
            (self).ibox = value


Crate.generics_Box_quark_Object__ref = quark_ffi_signatures_md.Root.generics_Box_quark_Object__md
Crate.generics_Box_quark_int__ref = quark_ffi_signatures_md.Root.generics_Box_quark_int__md
Crate.generics_Crate_quark_Object__ref = quark_ffi_signatures_md.Root.generics_Crate_quark_Object__md
class Sack(object):
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
            (self).ints = value


Sack.generics_Sack_ref = quark_ffi_signatures_md.Root.generics_Sack_md
class Matrix(object):
    def _init(self):
        self.width = None
        self.height = None
        self.columns = None

    def __init__(self, width, height):
        self._init()

    def _q__get__(self, i, j):
        return None

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
            (self).width = value

        if ((name) == (u"height")):
            (self).height = value

        if ((name) == (u"columns")):
            (self).columns = value


Matrix.generics_Matrix_quark_Object__ref = quark_ffi_signatures_md.Root.generics_Matrix_quark_Object__md
Matrix.quark_List_quark_List_quark_Object___ref = quark_ffi_signatures_md.Root.quark_List_quark_List_quark_Object___md
Matrix.quark_List_quark_Object__ref = quark_ffi_signatures_md.Root.quark_List_quark_Object__md
