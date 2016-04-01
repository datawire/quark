from quark_runtime import *

import quark.reflect
import matrix_md


class Matrix(object):
    def _init(self):
        self.width = None
        self.height = None
        self.columns = None

    def __init__(self, width, height):
        self._init()
        (self).width = width
        (self).height = height
        self.columns = _List([])
        while ((len(self.columns)) < (width)):
            column = _List([]);
            while ((len(column)) < (height)):
                (column).append(None);

            (self.columns).append(column);

    def __get__(self, i, j):
        return ((self.columns)[i])[j]

    def __set__(self, i, j, value):
        ((self.columns)[i])[j] = (value);

    def _getClass(self):
        return u"matrix.Matrix<quark.Object>"

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


Matrix.quark_List_quark_List_quark_Object___ref = matrix_md.Root.quark_List_quark_List_quark_Object___md
Matrix.quark_List_quark_Object__ref = matrix_md.Root.quark_List_quark_Object__md
def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    matrix = Matrix(3, 3);
    (matrix).__set__(2, 2, 123);
    _println((matrix).__get__(2, 2));
