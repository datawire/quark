from quark_runtime import *

import quark.reflect


class matrix_Matrix_quark_int____get___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(matrix_Matrix_quark_int____get___Method, self).__init__(u"quark.int", u"__get__", _List([u"quark.int", u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).__get__((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class matrix_Matrix_quark_int____set___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(matrix_Matrix_quark_int____set___Method, self).__init__(u"quark.void", u"__set__", _List([u"quark.int", u"quark.int", u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        (obj).__set__((args)[0], (args)[1], (args)[2]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class matrix_Matrix_quark_int_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(matrix_Matrix_quark_int_, self).__init__(u"matrix.Matrix<quark.int>");
        (self).name = u"matrix.Matrix"
        (self).parameters = _List([u"quark.int"])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"width"), quark.reflect.Field(u"quark.int", u"height"), quark.reflect.Field(u"quark.List<quark.List<quark.Object>>", u"columns")])
        (self).methods = _List([matrix_Matrix_quark_int____get___Method(), matrix_Matrix_quark_int____set___Method()])

    def construct(self, args):
        return matrix.Matrix((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
matrix_Matrix_quark_int_.singleton = matrix_Matrix_quark_int_()

class quark_List_quark_List_quark_Object__(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_List_quark_Object__, self).__init__(u"quark.List<quark.List<quark.Object>>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.List<quark.Object>"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_List_quark_Object__.singleton = quark_List_quark_List_quark_Object__()

class quark_List_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_Object_, self).__init__(u"quark.List<quark.Object>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
quark_List_quark_Object_.singleton = quark_List_quark_Object_()

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
Root.quark_List_quark_List_quark_Object___md = quark_List_quark_List_quark_Object__.singleton
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton

import matrix
