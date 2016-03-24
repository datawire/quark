from quark_runtime import *

import quark.reflect
import marshalling_md
import quark


class Inner(object):
    def _init(self):
        self.inner_int = None
        self.inner_string = None
        self.inner_float = None
        self.inner_string_list = None

    def __init__(self): self._init()

    def setup(self, i):
        f = float(i);
        (self).inner_int = i
        (self).inner_string = (u"str of ") + (str(i))
        (self).inner_float = (300.14) + (f)
        (self).inner_string_list = _List([u"i"])
        return self

    def _getClass(self):
        return u"m.Inner"

    def _getField(self, name):
        if ((name) == (u"inner_int")):
            return (self).inner_int

        if ((name) == (u"inner_string")):
            return (self).inner_string

        if ((name) == (u"inner_float")):
            return (self).inner_float

        if ((name) == (u"inner_string_list")):
            return (self).inner_string_list

        return None

    def _setField(self, name, value):
        if ((name) == (u"inner_int")):
            (self).inner_int = value

        if ((name) == (u"inner_string")):
            (self).inner_string = value

        if ((name) == (u"inner_float")):
            (self).inner_float = value

        if ((name) == (u"inner_string_list")):
            (self).inner_string_list = value


Inner.m_Inner_ref = marshalling_md.Root.m_Inner_md
Inner.quark_List_quark_String__ref = marshalling_md.Root.quark_List_quark_String__md
class Outer(object):
    def _init(self):
        self.outer_int = None
        self.outer_string = None
        self.outer_float = None
        self.outer_inner_list = None

    def __init__(self): self._init()

    def setup(self, i):
        f = float(i);
        (self).outer_int = (i) * (10)
        (self).outer_string = (u"str of ") + (str(i))
        (self).outer_float = (314000.15) + (f)
        (self).outer_inner_list = _List([(Inner()).setup(i), (Inner()).setup((i) + (42)), (Inner()).setup((i) * (42))])
        return self

    def _getClass(self):
        return u"m.Outer"

    def _getField(self, name):
        if ((name) == (u"outer_int")):
            return (self).outer_int

        if ((name) == (u"outer_string")):
            return (self).outer_string

        if ((name) == (u"outer_float")):
            return (self).outer_float

        if ((name) == (u"outer_inner_list")):
            return (self).outer_inner_list

        return None

    def _setField(self, name, value):
        if ((name) == (u"outer_int")):
            (self).outer_int = value

        if ((name) == (u"outer_string")):
            (self).outer_string = value

        if ((name) == (u"outer_float")):
            (self).outer_float = value

        if ((name) == (u"outer_inner_list")):
            (self).outer_inner_list = value


Outer.m_Outer_ref = marshalling_md.Root.m_Outer_md
Outer.quark_List_m_Inner__ref = marshalling_md.Root.quark_List_m_Inner__md

def test_marshalling():
    actual = (Outer()).setup(101);
    encoded = (quark.toJSON(actual, quark.reflect.Class.get(_getClass(actual)))).toString();
    _println(encoded);
    expected = Outer();
    quark.fromJSON(quark.reflect.Class.get(_getClass(expected)), expected, _JSONObject.parse(encoded));
    _println(str((expected).outer_int));
    _println((expected).outer_string);
    _println(repr((expected).outer_float));
    _println(repr((((expected).outer_inner_list)[1]).inner_float));
