from quark_runtime import *

import builtin.reflect


class box_Box_builtin_Object__set_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_builtin_Object__set_Method, self).__init__(u"builtin.void", u"set", _List([u"builtin.Object"]));

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

class box_Box_builtin_Object__get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_builtin_Object__get_Method, self).__init__(u"builtin.Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_builtin_Object_, self).__init__(u"box.Box<builtin.Object>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"builtin.Object"])
        (self).fields = _List([builtin.reflect.Field(u"builtin.Object", u"contents")])
        (self).methods = _List([box_Box_builtin_Object__set_Method(), box_Box_builtin_Object__get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_builtin_Object_.singleton = box_Box_builtin_Object_()

class box_Box_builtin_int__set_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_builtin_int__set_Method, self).__init__(u"builtin.void", u"set", _List([u"builtin.int"]));

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

class box_Box_builtin_int__get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_builtin_int__get_Method, self).__init__(u"builtin.int", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_builtin_int_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_builtin_int_, self).__init__(u"box.Box<builtin.int>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"builtin.int"])
        (self).fields = _List([builtin.reflect.Field(u"builtin.int", u"contents")])
        (self).methods = _List([box_Box_builtin_int__set_Method(), box_Box_builtin_int__get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_builtin_int_.singleton = box_Box_builtin_int_()

class box_Box_builtin_String__set_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_builtin_String__set_Method, self).__init__(u"builtin.void", u"set", _List([u"builtin.String"]));

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

class box_Box_builtin_String__get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_builtin_String__get_Method, self).__init__(u"builtin.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_builtin_String_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_builtin_String_, self).__init__(u"box.Box<builtin.String>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"builtin.String"])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"contents")])
        (self).methods = _List([box_Box_builtin_String__set_Method(), box_Box_builtin_String__get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_builtin_String_.singleton = box_Box_builtin_String_()

class box_Box_box_Box_builtin_int___set_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_box_Box_builtin_int___set_Method, self).__init__(u"builtin.void", u"set", _List([u"box.Box<builtin.int>"]));

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

class box_Box_box_Box_builtin_int___get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Box_box_Box_builtin_int___get_Method, self).__init__(u"box.Box<builtin.int>", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Box_box_Box_builtin_int__(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(box_Box_box_Box_builtin_int__, self).__init__(u"box.Box<box.Box<builtin.int>>");
        (self).name = u"box.Box"
        (self).parameters = _List([u"box.Box<builtin.int>"])
        (self).fields = _List([builtin.reflect.Field(u"box.Box<builtin.int>", u"contents")])
        (self).methods = _List([box_Box_box_Box_builtin_int___set_Method(), box_Box_box_Box_builtin_int___get_Method()])

    def construct(self, args):
        return box.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Box_box_Box_builtin_int__.singleton = box_Box_box_Box_builtin_int__()

class box_Crate_builtin_int__set_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_builtin_int__set_Method, self).__init__(u"builtin.void", u"set", _List([u"builtin.int"]));

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

class box_Crate_builtin_int__get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_builtin_int__get_Method, self).__init__(u"builtin.int", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Crate_builtin_int_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(box_Crate_builtin_int_, self).__init__(u"box.Crate<builtin.int>");
        (self).name = u"box.Crate"
        (self).parameters = _List([u"builtin.int"])
        (self).fields = _List([builtin.reflect.Field(u"box.Box<builtin.Object>", u"box"), builtin.reflect.Field(u"box.Box<builtin.int>", u"ibox")])
        (self).methods = _List([box_Crate_builtin_int__set_Method(), box_Crate_builtin_int__get_Method()])

    def construct(self, args):
        return box.Crate()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Crate_builtin_int_.singleton = box_Crate_builtin_int_()

class box_Crate_builtin_String__set_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_builtin_String__set_Method, self).__init__(u"builtin.void", u"set", _List([u"builtin.String"]));

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

class box_Crate_builtin_String__get_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(box_Crate_builtin_String__get_Method, self).__init__(u"builtin.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class box_Crate_builtin_String_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(box_Crate_builtin_String_, self).__init__(u"box.Crate<builtin.String>");
        (self).name = u"box.Crate"
        (self).parameters = _List([u"builtin.String"])
        (self).fields = _List([builtin.reflect.Field(u"box.Box<builtin.Object>", u"box"), builtin.reflect.Field(u"box.Box<builtin.int>", u"ibox")])
        (self).methods = _List([box_Crate_builtin_String__set_Method(), box_Crate_builtin_String__get_Method()])

    def construct(self, args):
        return box.Crate()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
box_Crate_builtin_String_.singleton = box_Crate_builtin_String_()

class box_Sack(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(box_Sack, self).__init__(u"box.Sack");
        (self).name = u"box.Sack"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"box.Box<builtin.int>", u"ints")])
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
Root.box_Box_builtin_Object__md = box_Box_builtin_Object_.singleton
Root.box_Box_builtin_int__md = box_Box_builtin_int_.singleton
Root.box_Sack_md = box_Sack.singleton

import box
