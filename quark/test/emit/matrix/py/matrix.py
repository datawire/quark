import os, sys

_Map = dict
class _List(list):
    def __repr__(self):
        return "[%s]" % ", ".join([str(e) for e in self])

def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)

class Matrix:
    def _init(self):
        self.width = None
        self.height = None
        self.columns = None
    
    
    
    
    
    def __init__(self, width, height):
        self._init()
        (self).width = width
        (self).height = height
        self.columns = _List([])
        while ((len(self.columns)) < (width)) :
            column = _List([]);
            while ((len(column)) < (height)) :
                (column).append(None);
            
            (self.columns).append(column);
        
    
    
    def __get__(self, i, j):
        return ((self.columns)[i])[j];
    
    
    def __set__(self, i, j, value):
        ((self.columns)[i])[j] = (value);
    


def main():
    matrix = Matrix(3, 3);
    (matrix).__set__(2, 2, 123);
    _println((matrix).__get__(2, 2));


if __name__ == "__main__":
    main()
