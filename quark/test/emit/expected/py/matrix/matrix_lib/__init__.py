from quark_runtime import *

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
        return u"Matrix<Object>"

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

    


def main():
    matrix = Matrix(3, 3);
    (matrix).__set__(2, 2, 123);
    _println((matrix).__get__(2, 2));
