from quark_runtime import *


class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self, contents):
        self._init()
        (self).contents = contents

    def get(self):
        return (self).contents

    def _getClass(self):
        return u"test3.Box<quark.Object>"

    def _getField(self, name):
        if ((name) == (u"contents")):
            return (self).contents

        return None

    def _setField(self, name, value):
        if ((name) == (u"contents")):
            (self).contents = value




def go():
    box = Box(u"Hello World!!!");
    _println((box).get());
    _println((box).contents);
    _println((Box(u"Hello World!!!")).get());
    _println((Box(u"Hello World!!!")).contents);
