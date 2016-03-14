from quark_runtime import *

import quark.reflect


class list_Box_quark_int__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(list_Box_quark_int__get_Method, self).__init__(u"quark.int", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class list_Box_quark_int__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(list_Box_quark_int__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        (obj).set((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class list_Box_quark_int_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(list_Box_quark_int_, self).__init__(u"list.Box<quark.int>");
        (self).name = u"list.Box"
        (self).parameters = _List([u"quark.int"])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"contents")])
        (self).methods = _List([list_Box_quark_int__get_Method(), list_Box_quark_int__set_Method()])

    def construct(self, args):
        return list.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
list_Box_quark_int_.singleton = list_Box_quark_int_()

class quark_List_quark_int_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_int_, self).__init__(u"quark.List<quark.int>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.int"])
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
quark_List_quark_int_.singleton = quark_List_quark_int_()

class quark_List_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_String_, self).__init__(u"quark.List<quark.String>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.String"])
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
quark_List_quark_String_.singleton = quark_List_quark_String_()

class quark_List_list_Box_quark_int__(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_list_Box_quark_int__, self).__init__(u"quark.List<list.Box<quark.int>>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"list.Box<quark.int>"])
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
quark_List_list_Box_quark_int__.singleton = quark_List_list_Box_quark_int__()

class quark_List_quark_List_quark_int__(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_List_quark_int__, self).__init__(u"quark.List<quark.List<quark.int>>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.List<quark.int>"])
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
quark_List_quark_List_quark_int__.singleton = quark_List_quark_List_quark_int__()

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


import list
