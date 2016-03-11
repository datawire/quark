from quark_runtime import *

import builtin.reflect


class matrix_Matrix_builtin_int____get___Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(matrix_Matrix_builtin_int____get___Method, self).__init__(u"builtin.int", u"__get__", _List([u"builtin.int", u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).__get__((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class matrix_Matrix_builtin_int____set___Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(matrix_Matrix_builtin_int____set___Method, self).__init__(u"builtin.void", u"__set__", _List([u"builtin.int", u"builtin.int", u"builtin.int"]));

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

class matrix_Matrix_builtin_int_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(matrix_Matrix_builtin_int_, self).__init__(u"matrix.Matrix<builtin.int>");
        (self).name = u"matrix.Matrix"
        (self).parameters = _List([u"builtin.int"])
        (self).fields = _List([builtin.reflect.Field(u"builtin.int", u"width"), builtin.reflect.Field(u"builtin.int", u"height"), builtin.reflect.Field(u"builtin.List<builtin.List<builtin.Object>>", u"columns")])
        (self).methods = _List([matrix_Matrix_builtin_int____get___Method(), matrix_Matrix_builtin_int____set___Method()])

    def construct(self, args):
        return matrix.Matrix((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
matrix_Matrix_builtin_int_.singleton = matrix_Matrix_builtin_int_()

class builtin_List_builtin_List_builtin_Object__(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_List_builtin_Object__, self).__init__(u"builtin.List<builtin.List<builtin.Object>>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.List<builtin.Object>"])
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
builtin_List_builtin_List_builtin_Object__.singleton = builtin_List_builtin_List_builtin_Object__()

class builtin_List_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_Object_, self).__init__(u"builtin.List<builtin.Object>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.Object"])
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
builtin_List_builtin_Object_.singleton = builtin_List_builtin_Object_()

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
Root.builtin_List_builtin_List_builtin_Object___md = builtin_List_builtin_List_builtin_Object__.singleton
Root.builtin_List_builtin_Object__md = builtin_List_builtin_Object_.singleton

import matrix
