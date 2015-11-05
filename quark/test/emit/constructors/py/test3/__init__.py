from quark_runtime import *

import test3

class Box(object):
    def _init(self):
        self.contents = None

    def __init__(self, contents):
        self._init()
        (self).contents = contents

    def get(self):
        return (self).contents



def go():
    box = Box(u"Hello World!!!");
    _println((box).get());
    _println((box).contents);
    _println((Box(u"Hello World!!!")).get());
    _println((Box(u"Hello World!!!")).contents);
