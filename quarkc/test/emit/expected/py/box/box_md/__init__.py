from quark_runtime import *

import quark.reflect


class box_Box_quark_Object__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_quark_Object__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.Object"]));

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

class box_Box_quark_Object__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_quark_Object__get_Method, self).__init__(u"quark.Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_quark_Object_, self).__init__(u"box.Box<quark.Object>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([quark.reflect.Field(u"quark.Object", u"contents")])
        (self).methods = _List([box_Box_quark_Object__set_Method(), box_Box_quark_Object__get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_quark_Object_.singleton = box_Box_quark_Object_()

class box_Box_quark_int__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_quark_int__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.int"]));

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

class box_Box_quark_int__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_quark_int__get_Method, self).__init__(u"quark.int", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_quark_int_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_quark_int_, self).__init__(u"box.Box<quark.int>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"quark.int"])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"contents")])
        (self).methods = _List([box_Box_quark_int__set_Method(), box_Box_quark_int__get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_quark_int_.singleton = box_Box_quark_int_()

class box_Box_quark_String__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_quark_String__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.String"]));

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

class box_Box_quark_String__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_quark_String__get_Method, self).__init__(u"quark.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_quark_String_, self).__init__(u"box.Box<quark.String>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"contents")])
        (self).methods = _List([box_Box_quark_String__set_Method(), box_Box_quark_String__get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_quark_String_.singleton = box_Box_quark_String_()

class box_Box_box_Box_quark_int___set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_box_Box_quark_int___set_Method, self).__init__(u"quark.void", u"set", _List([u"box.Box<quark.int>"]));

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

class box_Box_box_Box_quark_int___get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_box_Box_quark_int___get_Method, self).__init__(u"box.Box<quark.int>", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_box_Box_quark_int__(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_box_Box_quark_int__, self).__init__(u"box.Box<box.Box<quark.int>>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"box.Box<quark.int>"])
        (self).fields = _List([quark.reflect.Field(u"box.Box<quark.int>", u"contents")])
        (self).methods = _List([box_Box_box_Box_quark_int___set_Method(), box_Box_box_Box_quark_int___get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_box_Box_quark_int__.singleton = box_Box_box_Box_quark_int__()

class box_Crate_quark_int__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_quark_int__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.int"]));

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

class box_Crate_quark_int__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_quark_int__get_Method, self).__init__(u"quark.int", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Crate_quark_int_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(box_Crate_quark_int_, self).__init__(u"box.Crate<quark.int>");
        (self).name = u"box.Crate"
        (self).parameters = _List([u"quark.int"])
        (self).fields = _List([quark.reflect.Field(u"box.Box<quark.Object>", u"box"), quark.reflect.Field(u"box.Box<quark.int>", u"ibox")])
        (self).methods = _List([box_Crate_quark_int__set_Method(), box_Crate_quark_int__get_Method()])

    def construct(self, args):
        return box.Crate()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Crate_quark_int_.singleton = box_Crate_quark_int_()

class box_Crate_quark_String__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_quark_String__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.String"]));

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

class box_Crate_quark_String__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_quark_String__get_Method, self).__init__(u"quark.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Crate_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(box_Crate_quark_String_, self).__init__(u"box.Crate<quark.String>");
        (self).name = u"box.Crate"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([quark.reflect.Field(u"box.Box<quark.Object>", u"box"), quark.reflect.Field(u"box.Box<quark.int>", u"ibox")])
        (self).methods = _List([box_Crate_quark_String__set_Method(), box_Crate_quark_String__get_Method()])

    def construct(self, args):
        return box.Crate()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Crate_quark_String_.singleton = box_Crate_quark_String_()

class box_Sack(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(box_Sack, self).__init__(u"box.Sack");
        (self).name = u"box.Sack"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"box.Box<quark.int>", u"ints")])
        (self).methods = _List([])

    def construct(self, args):
        return box.Sack()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Sack.singleton = box_Sack()

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
Root.box_Box_quark_Object__md = box_Box_quark_Object_.singleton
Root.box_Box_quark_int__md = box_Box_quark_int_.singleton
Root.box_Sack_md = box_Sack.singleton

import box
