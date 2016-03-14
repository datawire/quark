from quark_runtime import *

import quark.reflect
import macro_pie_md


class Pie(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        p = Pie();
        x = 3;

    def _getClass(self):
        return u"macro_pie.Pie"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Pie.macro_pie_Pie_ref = macro_pie_md.Root.macro_pie_Pie_md

def main():
    _println(3);
