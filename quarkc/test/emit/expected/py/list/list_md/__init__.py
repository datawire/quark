from quark_runtime import *

import builtin.reflect


class list_Box_builtin_int__get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(list_Box_builtin_int__get_Method, self).__init__(u"builtin.int", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class list_Box_builtin_int__set_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(list_Box_builtin_int__set_Method, self).__init__(u"builtin.void", u"set", _List([u"builtin.int"]));

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

class list_Box_builtin_int_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(list_Box_builtin_int_, self).__init__(u"list.Box<builtin.int>");
        (self).name = u"list.Box"
        (self).parameters = _List([u"builtin.int"])
        (self).fields = _List([builtin.reflect.Field(u"builtin.int", u"contents")])
        (self).methods = _List([list_Box_builtin_int__get_Method(), list_Box_builtin_int__set_Method()])

    def construct(self, args):
        return list.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
list_Box_builtin_int_.singleton = list_Box_builtin_int_()

class builtin_List_builtin_int_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_int_, self).__init__(u"builtin.List<builtin.int>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.int"])
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
builtin_List_builtin_int_.singleton = builtin_List_builtin_int_()

class builtin_List_builtin_String_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_String_, self).__init__(u"builtin.List<builtin.String>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.String"])
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
builtin_List_builtin_String_.singleton = builtin_List_builtin_String_()

class builtin_List_list_Box_builtin_int__(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_list_Box_builtin_int__, self).__init__(u"builtin.List<list.Box<builtin.int>>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"list.Box<builtin.int>"])
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
builtin_List_list_Box_builtin_int__.singleton = builtin_List_list_Box_builtin_int__()

class builtin_List_builtin_List_builtin_int__(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_List_builtin_int__, self).__init__(u"builtin.List<builtin.List<builtin.int>>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.List<builtin.int>"])
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
builtin_List_builtin_List_builtin_int__.singleton = builtin_List_builtin_List_builtin_int__()

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
