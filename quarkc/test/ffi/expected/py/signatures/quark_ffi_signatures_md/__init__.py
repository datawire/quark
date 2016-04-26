from quark_runtime import *

import quark.reflect


class generics_Box_quark_Object__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Box_quark_Object__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.Object"]));

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

class generics_Box_quark_Object__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Box_quark_Object__get_Method, self).__init__(u"quark.Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_Box_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_Box_quark_Object_, self).__init__(u"generics.Box<quark.Object>");
        (self).name = u"generics.Box"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([quark.reflect.Field(u"quark.Object", u"contents")])
        (self).methods = _List([generics_Box_quark_Object__set_Method(), generics_Box_quark_Object__get_Method()])

    def construct(self, args):
        return generics.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_Box_quark_Object_.singleton = generics_Box_quark_Object_()

class generics_Box_quark_int__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Box_quark_int__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.int"]));

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

class generics_Box_quark_int__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Box_quark_int__get_Method, self).__init__(u"quark.int", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_Box_quark_int_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_Box_quark_int_, self).__init__(u"generics.Box<quark.int>");
        (self).name = u"generics.Box"
        (self).parameters = _List([u"quark.int"])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"contents")])
        (self).methods = _List([generics_Box_quark_int__set_Method(), generics_Box_quark_int__get_Method()])

    def construct(self, args):
        return generics.Box()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_Box_quark_int_.singleton = generics_Box_quark_int_()

class generics_Crate_quark_Object__set_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Crate_quark_Object__set_Method, self).__init__(u"quark.void", u"set", _List([u"quark.Object"]));

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

class generics_Crate_quark_Object__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Crate_quark_Object__get_Method, self).__init__(u"quark.Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_Crate_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_Crate_quark_Object_, self).__init__(u"generics.Crate<quark.Object>");
        (self).name = u"generics.Crate"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([quark.reflect.Field(u"generics.Box<quark.Object>", u"box"), quark.reflect.Field(u"generics.Box<quark.int>", u"ibox")])
        (self).methods = _List([generics_Crate_quark_Object__set_Method(), generics_Crate_quark_Object__get_Method()])

    def construct(self, args):
        return generics.Crate()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_Crate_quark_Object_.singleton = generics_Crate_quark_Object_()

class generics_Sack(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_Sack, self).__init__(u"generics.Sack");
        (self).name = u"generics.Sack"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"generics.Box<quark.int>", u"ints")])
        (self).methods = _List([])

    def construct(self, args):
        return generics.Sack()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_Sack.singleton = generics_Sack()

class generics_Matrix_quark_Object____get___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Matrix_quark_Object____get___Method, self).__init__(u"quark.Object", u"__get__", _List([u"quark.int", u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).__get__((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_Matrix_quark_Object____set___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_Matrix_quark_Object____set___Method, self).__init__(u"quark.void", u"__set__", _List([u"quark.int", u"quark.int", u"quark.Object"]));

    def invoke(self, object, args):
        obj = object;
        (obj).__set__((args)[0], (args)[1], (args)[2]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_Matrix_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_Matrix_quark_Object_, self).__init__(u"generics.Matrix<quark.Object>");
        (self).name = u"generics.Matrix"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"width"), quark.reflect.Field(u"quark.int", u"height"), quark.reflect.Field(u"quark.List<quark.List<quark.Object>>", u"columns")])
        (self).methods = _List([generics_Matrix_quark_Object____get___Method(), generics_Matrix_quark_Object____set___Method()])

    def construct(self, args):
        return generics.Matrix((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_Matrix_quark_Object_.singleton = generics_Matrix_quark_Object_()

class generics_constructors_Box_quark_Object__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_constructors_Box_quark_Object__get_Method, self).__init__(u"quark.Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_constructors_Box_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_constructors_Box_quark_Object_, self).__init__(u"generics.constructors.Box<quark.Object>");
        (self).name = u"generics.constructors.Box"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([quark.reflect.Field(u"quark.Object", u"contents")])
        (self).methods = _List([generics_constructors_Box_quark_Object__get_Method()])

    def construct(self, args):
        return generics.constructors.Box((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_constructors_Box_quark_Object_.singleton = generics_constructors_Box_quark_Object_()

class generics_pkg_Foo_quark_Object__foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_pkg_Foo_quark_Object__foo_Method, self).__init__(u"quark.Object", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_pkg_Foo_quark_Object__get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_pkg_Foo_quark_Object__get_Method, self).__init__(u"quark.Object", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_pkg_Foo_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_pkg_Foo_quark_Object_, self).__init__(u"generics.pkg.Foo<quark.Object>");
        (self).name = u"generics.pkg.Foo"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([generics_pkg_Foo_quark_Object__foo_Method(), generics_pkg_Foo_quark_Object__get_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_pkg_Foo_quark_Object_.singleton = generics_pkg_Foo_quark_Object_()

class generics_pkg_StringFoo_get_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_pkg_StringFoo_get_Method, self).__init__(u"quark.String", u"get", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).get()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_pkg_StringFoo_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_pkg_StringFoo_foo_Method, self).__init__(u"quark.String", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_pkg_StringFoo(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_pkg_StringFoo, self).__init__(u"generics.pkg.StringFoo");
        (self).name = u"generics.pkg.StringFoo"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([generics_pkg_StringFoo_get_Method(), generics_pkg_StringFoo_foo_Method()])

    def construct(self, args):
        return generics.pkg.StringFoo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_pkg_StringFoo.singleton = generics_pkg_StringFoo()

class generics_pkg_Box_quark_String_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_pkg_Box_quark_String_, self).__init__(u"generics.pkg.Box<quark.String>");
        (self).name = u"generics.pkg.Box"
        (self).parameters = _List([u"quark.String"])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"contents")])
        (self).methods = _List([])

    def construct(self, args):
        return generics.pkg.Box((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_pkg_Box_quark_String_.singleton = generics_pkg_Box_quark_String_()

class generics_pkg_StringBox(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_pkg_StringBox, self).__init__(u"generics.pkg.StringBox");
        (self).name = u"generics.pkg.StringBox"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"contents")])
        (self).methods = _List([])

    def construct(self, args):
        return generics.pkg.StringBox((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_pkg_StringBox.singleton = generics_pkg_StringBox()

class generics_ccc_TLSContextInitializer_getValue_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_ccc_TLSContextInitializer_getValue_Method, self).__init__(u"generics.ccc.Context", u"getValue", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getValue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_ccc_TLSContextInitializer(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_ccc_TLSContextInitializer, self).__init__(u"generics.ccc.TLSContextInitializer");
        (self).name = u"generics.ccc.TLSContextInitializer"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([generics_ccc_TLSContextInitializer_getValue_Method()])

    def construct(self, args):
        return generics.ccc.TLSContextInitializer()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_ccc_TLSContextInitializer.singleton = generics_ccc_TLSContextInitializer()

class generics_ccc_Context_current_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_ccc_Context_current_Method, self).__init__(u"generics.ccc.Context", u"current", _List([]));

    def invoke(self, object, args):
        obj = object;
        return generics.ccc.Context.current()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_ccc_Context_global_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_ccc_Context_global_Method, self).__init__(u"generics.ccc.Context", u"global", _List([]));

    def invoke(self, object, args):
        obj = object;
        return generics.ccc.Context.global_()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_ccc_Context(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_ccc_Context, self).__init__(u"generics.ccc.Context");
        (self).name = u"generics.ccc.Context"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"generics.ccc.Context", u"_global"), quark.reflect.Field(u"generics.ccc.TLS<generics.ccc.Context>", u"_current"), quark.reflect.Field(u"generics.ccc.Context", u"parent")])
        (self).methods = _List([generics_ccc_Context_current_Method(), generics_ccc_Context_global_Method()])

    def construct(self, args):
        return generics.ccc.Context((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_ccc_Context.singleton = generics_ccc_Context()

class generics_ccc_TLSInitializer_quark_Object__getValue_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_ccc_TLSInitializer_quark_Object__getValue_Method, self).__init__(u"quark.Object", u"getValue", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getValue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_ccc_TLSInitializer_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_ccc_TLSInitializer_quark_Object_, self).__init__(u"generics.ccc.TLSInitializer<quark.Object>");
        (self).name = u"generics.ccc.TLSInitializer"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([generics_ccc_TLSInitializer_quark_Object__getValue_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_ccc_TLSInitializer_quark_Object_.singleton = generics_ccc_TLSInitializer_quark_Object_()

class generics_ccc_TLS_generics_ccc_Context__getValue_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(generics_ccc_TLS_generics_ccc_Context__getValue_Method, self).__init__(u"generics.ccc.Context", u"getValue", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getValue()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class generics_ccc_TLS_generics_ccc_Context_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(generics_ccc_TLS_generics_ccc_Context_, self).__init__(u"generics.ccc.TLS<generics.ccc.Context>");
        (self).name = u"generics.ccc.TLS"
        (self).parameters = _List([u"generics.ccc.Context"])
        (self).fields = _List([quark.reflect.Field(u"generics.ccc.Context", u"_value")])
        (self).methods = _List([generics_ccc_TLS_generics_ccc_Context__getValue_Method()])

    def construct(self, args):
        return generics.ccc.TLS((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
generics_ccc_TLS_generics_ccc_Context_.singleton = generics_ccc_TLS_generics_ccc_Context_()

class inheritance_Base(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_Base, self).__init__(u"inheritance.Base");
        (self).name = u"inheritance.Base"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.Base()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_Base.singleton = inheritance_Base()

class inheritance_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_Test, self).__init__(u"inheritance.Test");
        (self).name = u"inheritance.Test"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name"), quark.reflect.Field(u"quark.String", u"mumble"), quark.reflect.Field(u"quark.String", u"later")])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_Test.singleton = inheritance_Test()

class inheritance_A(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_A, self).__init__(u"inheritance.A");
        (self).name = u"inheritance.A"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.A((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_A.singleton = inheritance_A()

class inheritance_B_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_B_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_B(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_B, self).__init__(u"inheritance.B");
        (self).name = u"inheritance.B"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([inheritance_B_greet_Method()])

    def construct(self, args):
        return inheritance.B((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_B.singleton = inheritance_B()

class inheritance_C_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_C_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_C(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_C, self).__init__(u"inheritance.C");
        (self).name = u"inheritance.C"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([inheritance_C_greet_Method()])

    def construct(self, args):
        return inheritance.C((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_C.singleton = inheritance_C()

class inheritance_X(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_X, self).__init__(u"inheritance.X");
        (self).name = u"inheritance.X"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.X()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_X.singleton = inheritance_X()

class inheritance_Y_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_Y_test_Method, self).__init__(u"quark.void", u"test", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_Y(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_Y, self).__init__(u"inheritance.Y");
        (self).name = u"inheritance.Y"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([inheritance_Y_test_Method()])

    def construct(self, args):
        return inheritance.Y((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_Y.singleton = inheritance_Y()

class inheritance_t1_A_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_t1_A_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_t1_A(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_t1_A, self).__init__(u"inheritance.t1.A");
        (self).name = u"inheritance.t1.A"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_t1_A_foo_Method()])

    def construct(self, args):
        return inheritance.t1.A()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_t1_A.singleton = inheritance_t1_A()

class inheritance_t1_B_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_t1_B_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_t1_B(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_t1_B, self).__init__(u"inheritance.t1.B");
        (self).name = u"inheritance.t1.B"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_t1_B_foo_Method()])

    def construct(self, args):
        return inheritance.t1.B()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_t1_B.singleton = inheritance_t1_B()

class inheritance_t1_C_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_t1_C_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_t1_C(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_t1_C, self).__init__(u"inheritance.t1.C");
        (self).name = u"inheritance.t1.C"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_t1_C_foo_Method()])

    def construct(self, args):
        return inheritance.t1.C()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_t1_C.singleton = inheritance_t1_C()

class inheritance_t2_A(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_t2_A, self).__init__(u"inheritance.t2.A");
        (self).name = u"inheritance.t2.A"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.t2.A()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_t2_A.singleton = inheritance_t2_A()

class inheritance_t2_B(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_t2_B, self).__init__(u"inheritance.t2.B");
        (self).name = u"inheritance.t2.B"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.t2.B()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_t2_B.singleton = inheritance_t2_B()

class inheritance_t2_X_quark_int_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_t2_X_quark_int_, self).__init__(u"inheritance.t2.X<quark.int>");
        (self).name = u"inheritance.t2.X"
        (self).parameters = _List([u"quark.int"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.t2.X()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_t2_X_quark_int_.singleton = inheritance_t2_X_quark_int_()

class inheritance_t2_Y(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_t2_Y, self).__init__(u"inheritance.t2.Y");
        (self).name = u"inheritance.t2.Y"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.t2.Y()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_t2_Y.singleton = inheritance_t2_Y()

class inheritance_pets_Cat_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_pets_Cat_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_pets_Cat(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_pets_Cat, self).__init__(u"inheritance.pets.Cat");
        (self).name = u"inheritance.pets.Cat"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_pets_Cat_greet_Method()])

    def construct(self, args):
        return inheritance.pets.Cat()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_pets_Cat.singleton = inheritance_pets_Cat()

class inheritance_pets_Dog_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_pets_Dog_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_pets_Dog(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_pets_Dog, self).__init__(u"inheritance.pets.Dog");
        (self).name = u"inheritance.pets.Dog"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_pets_Dog_greet_Method()])

    def construct(self, args):
        return inheritance.pets.Dog()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_pets_Dog.singleton = inheritance_pets_Dog()

class inheritance_Message_encode_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_Message_encode_Method, self).__init__(u"quark.String", u"encode", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).encode()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_Message(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_Message, self).__init__(u"inheritance.Message");
        (self).name = u"inheritance.Message"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_Message_encode_Method()])

    def construct(self, args):
        return inheritance.Message()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_Message.singleton = inheritance_Message()

class inheritance_Ping_encode_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_Ping_encode_Method, self).__init__(u"quark.String", u"encode", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).encode()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_Ping(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_Ping, self).__init__(u"inheritance.Ping");
        (self).name = u"inheritance.Ping"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_Ping_encode_Method()])

    def construct(self, args):
        return inheritance.Ping()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_Ping.singleton = inheritance_Ping()

class inheritance_Pong_toString_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_Pong_toString_Method, self).__init__(u"quark.String", u"toString", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).toString()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_Pong_encode_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_Pong_encode_Method, self).__init__(u"quark.String", u"encode", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).encode()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_Pong(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_Pong, self).__init__(u"inheritance.Pong");
        (self).name = u"inheritance.Pong"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_Pong_toString_Method(), inheritance_Pong_encode_Method()])

    def construct(self, args):
        return inheritance.Pong()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_Pong.singleton = inheritance_Pong()

class inheritance_super__A_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_super__A_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_super__A(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_super__A, self).__init__(u"inheritance.super_.A");
        (self).name = u"inheritance.super_.A"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([inheritance_super__A_greet_Method()])

    def construct(self, args):
        return inheritance.super_.A((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_super__A.singleton = inheritance_super__A()

class inheritance_super__B_greet_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_super__B_greet_Method, self).__init__(u"quark.void", u"greet", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).greet();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_super__B(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_super__B, self).__init__(u"inheritance.super_.B");
        (self).name = u"inheritance.super_.B"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([inheritance_super__B_greet_Method()])

    def construct(self, args):
        return inheritance.super_.B()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_super__B.singleton = inheritance_super__B()

class inheritance_use_before_def_Bar_go_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(inheritance_use_before_def_Bar_go_Method, self).__init__(u"quark.void", u"go", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).go();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class inheritance_use_before_def_Bar(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_use_before_def_Bar, self).__init__(u"inheritance.use_before_def.Bar");
        (self).name = u"inheritance.use_before_def.Bar"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([inheritance_use_before_def_Bar_go_Method()])

    def construct(self, args):
        return inheritance.use_before_def.Bar()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_use_before_def_Bar.singleton = inheritance_use_before_def_Bar()

class inheritance_use_before_def_Foo(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(inheritance_use_before_def_Foo, self).__init__(u"inheritance.use_before_def.Foo");
        (self).name = u"inheritance.use_before_def.Foo"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return inheritance.use_before_def.Foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
inheritance_use_before_def_Foo.singleton = inheritance_use_before_def_Foo()

class interfaces_A_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_A_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_A_bar_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_A_bar_Method, self).__init__(u"quark.void", u"bar", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).bar();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_A(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_A, self).__init__(u"interfaces.A");
        (self).name = u"interfaces.A"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_A_foo_Method(), interfaces_A_bar_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_A.singleton = interfaces_A()

class interfaces_B_bar_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_B_bar_Method, self).__init__(u"quark.void", u"bar", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).bar();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_B(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_B, self).__init__(u"interfaces.B");
        (self).name = u"interfaces.B"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_B_bar_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_B.singleton = interfaces_B()

class interfaces_C_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_C_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_C(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_C, self).__init__(u"interfaces.C");
        (self).name = u"interfaces.C"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_C_foo_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_C.singleton = interfaces_C()

class interfaces_T1_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T1_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T1_bar_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T1_bar_Method, self).__init__(u"quark.void", u"bar", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).bar();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T1(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_T1, self).__init__(u"interfaces.T1");
        (self).name = u"interfaces.T1"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_T1_foo_Method(), interfaces_T1_bar_Method()])

    def construct(self, args):
        return interfaces.T1()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_T1.singleton = interfaces_T1()

class interfaces_T2_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T2_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T2_bar_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T2_bar_Method, self).__init__(u"quark.void", u"bar", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).bar();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T2(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_T2, self).__init__(u"interfaces.T2");
        (self).name = u"interfaces.T2"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_T2_foo_Method(), interfaces_T2_bar_Method()])

    def construct(self, args):
        return interfaces.T2()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_T2.singleton = interfaces_T2()

class interfaces_T3_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T3_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T3_bar_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T3_bar_Method, self).__init__(u"quark.void", u"bar", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).bar();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T3(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_T3, self).__init__(u"interfaces.T3");
        (self).name = u"interfaces.T3"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_T3_foo_Method(), interfaces_T3_bar_Method()])

    def construct(self, args):
        return interfaces.T3()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_T3.singleton = interfaces_T3()

class interfaces_T4_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T4_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T4_bar_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T4_bar_Method, self).__init__(u"quark.void", u"bar", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).bar();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T4(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_T4, self).__init__(u"interfaces.T4");
        (self).name = u"interfaces.T4"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_T4_foo_Method(), interfaces_T4_bar_Method()])

    def construct(self, args):
        return interfaces.T4()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_T4.singleton = interfaces_T4()

class interfaces_T5_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T5_foo_Method, self).__init__(u"quark.void", u"foo", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T5_bar_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_T5_bar_Method, self).__init__(u"quark.void", u"bar", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).bar();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_T5(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_T5, self).__init__(u"interfaces.T5");
        (self).name = u"interfaces.T5"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_T5_foo_Method(), interfaces_T5_bar_Method()])

    def construct(self, args):
        return interfaces.T5()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_T5.singleton = interfaces_T5()

class interfaces_Foo_m1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Foo_m1_Method, self).__init__(u"quark.void", u"m1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).m1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Foo_m2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Foo_m2_Method, self).__init__(u"quark.void", u"m2", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m2((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Foo_m3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Foo_m3_Method, self).__init__(u"quark.void", u"m3", _List([u"quark.List<quark.String>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m3((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Foo(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_Foo, self).__init__(u"interfaces.Foo");
        (self).name = u"interfaces.Foo"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_Foo_m1_Method(), interfaces_Foo_m2_Method(), interfaces_Foo_m3_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_Foo.singleton = interfaces_Foo()

class interfaces_Bar_quark_Object__m1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Bar_quark_Object__m1_Method, self).__init__(u"quark.void", u"m1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).m1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Bar_quark_Object__m2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Bar_quark_Object__m2_Method, self).__init__(u"quark.void", u"m2", _List([u"quark.Object"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m2((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Bar_quark_Object__m3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Bar_quark_Object__m3_Method, self).__init__(u"quark.void", u"m3", _List([u"quark.List<quark.Object>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m3((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Bar_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_Bar_quark_Object_, self).__init__(u"interfaces.Bar<quark.Object>");
        (self).name = u"interfaces.Bar"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([interfaces_Bar_quark_Object__m1_Method(), interfaces_Bar_quark_Object__m2_Method(), interfaces_Bar_quark_Object__m3_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_Bar_quark_Object_.singleton = interfaces_Bar_quark_Object_()

class interfaces_Baz_m2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Baz_m2_Method, self).__init__(u"quark.void", u"m2", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m2((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Baz_m1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Baz_m1_Method, self).__init__(u"quark.void", u"m1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).m1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Baz_m3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_Baz_m3_Method, self).__init__(u"quark.void", u"m3", _List([u"quark.List<quark.String>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m3((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_Baz(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_Baz, self).__init__(u"interfaces.Baz");
        (self).name = u"interfaces.Baz"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_Baz_m2_Method(), interfaces_Baz_m1_Method(), interfaces_Baz_m3_Method()])

    def construct(self, args):
        return interfaces.Baz()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_Baz.singleton = interfaces_Baz()

class interfaces_RazBar_m1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_RazBar_m1_Method, self).__init__(u"quark.void", u"m1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).m1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_RazBar_m2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_RazBar_m2_Method, self).__init__(u"quark.void", u"m2", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m2((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_RazBar_m3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_RazBar_m3_Method, self).__init__(u"quark.void", u"m3", _List([u"quark.List<quark.Object>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m3((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_RazBar(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_RazBar, self).__init__(u"interfaces.RazBar");
        (self).name = u"interfaces.RazBar"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_RazBar_m1_Method(), interfaces_RazBar_m2_Method(), interfaces_RazBar_m3_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_RazBar.singleton = interfaces_RazBar()

class interfaces_RazFaz_quark_Object__m1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_RazFaz_quark_Object__m1_Method, self).__init__(u"quark.void", u"m1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).m1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_RazFaz_quark_Object__m2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_RazFaz_quark_Object__m2_Method, self).__init__(u"quark.void", u"m2", _List([u"quark.Object"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m2((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_RazFaz_quark_Object__m3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_RazFaz_quark_Object__m3_Method, self).__init__(u"quark.void", u"m3", _List([u"quark.List<quark.Object>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m3((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_RazFaz_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_RazFaz_quark_Object_, self).__init__(u"interfaces.RazFaz<quark.Object>");
        (self).name = u"interfaces.RazFaz"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([interfaces_RazFaz_quark_Object__m1_Method(), interfaces_RazFaz_quark_Object__m2_Method(), interfaces_RazFaz_quark_Object__m3_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_RazFaz_quark_Object_.singleton = interfaces_RazFaz_quark_Object_()

class interfaces_BazBar_m1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_BazBar_m1_Method, self).__init__(u"quark.void", u"m1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).m1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_BazBar_m2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_BazBar_m2_Method, self).__init__(u"quark.void", u"m2", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m2((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_BazBar_m3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_BazBar_m3_Method, self).__init__(u"quark.void", u"m3", _List([u"quark.List<quark.String>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m3((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_BazBar(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_BazBar, self).__init__(u"interfaces.BazBar");
        (self).name = u"interfaces.BazBar"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([interfaces_BazBar_m1_Method(), interfaces_BazBar_m2_Method(), interfaces_BazBar_m3_Method()])

    def construct(self, args):
        return interfaces.BazBar()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_BazBar.singleton = interfaces_BazBar()

class interfaces_BazFaz_quark_Object__m1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_BazFaz_quark_Object__m1_Method, self).__init__(u"quark.void", u"m1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).m1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_BazFaz_quark_Object__m2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_BazFaz_quark_Object__m2_Method, self).__init__(u"quark.void", u"m2", _List([u"quark.Object"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m2((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_BazFaz_quark_Object__m3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(interfaces_BazFaz_quark_Object__m3_Method, self).__init__(u"quark.void", u"m3", _List([u"quark.List<quark.Object>"]));

    def invoke(self, object, args):
        obj = object;
        (obj).m3((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class interfaces_BazFaz_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(interfaces_BazFaz_quark_Object_, self).__init__(u"interfaces.BazFaz<quark.Object>");
        (self).name = u"interfaces.BazFaz"
        (self).parameters = _List([u"quark.Object"])
        (self).fields = _List([])
        (self).methods = _List([interfaces_BazFaz_quark_Object__m1_Method(), interfaces_BazFaz_quark_Object__m2_Method(), interfaces_BazFaz_quark_Object__m3_Method()])

    def construct(self, args):
        return interfaces.BazFaz()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
interfaces_BazFaz_quark_Object_.singleton = interfaces_BazFaz_quark_Object_()

class classes_Overload___add___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_Overload___add___Method, self).__init__(u"classes.Overload", u"__add__", _List([u"classes.Overload"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).__add__((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_Overload___mul___Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_Overload___mul___Method, self).__init__(u"classes.Overload", u"__mul__", _List([u"classes.Overload"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).__mul__((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_Overload_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_Overload_test_Method, self).__init__(u"quark.void", u"test", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_Overload(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_Overload, self).__init__(u"classes.Overload");
        (self).name = u"classes.Overload"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([classes_Overload___add___Method(), classes_Overload___mul___Method(), classes_Overload_test_Method()])

    def construct(self, args):
        return classes.Overload((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_Overload.singleton = classes_Overload()

class classes_Test_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_Test_test_Method, self).__init__(u"quark.void", u"test", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_Test, self).__init__(u"classes.Test");
        (self).name = u"classes.Test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([classes_Test_test_Method()])

    def construct(self, args):
        return classes.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_Test.singleton = classes_Test()

class classes_string_test_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_string_test_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_string_test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_string_test, self).__init__(u"classes.string_test");
        (self).name = u"classes.string_test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([classes_string_test_check_Method()])

    def construct(self, args):
        return classes.string_test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_string_test.singleton = classes_string_test()

class classes_test_size_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_size_does_Method, self).__init__(u"classes.test_size", u"does", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_size_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_size_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_size(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_size, self).__init__(u"classes.test_size");
        (self).name = u"classes.test_size"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what")])
        (self).methods = _List([classes_test_size_does_Method(), classes_test_size_check_Method()])

    def construct(self, args):
        return classes.test_size((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_size.singleton = classes_test_size()

class classes_test_startsWith_that_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_startsWith_that_Method, self).__init__(u"classes.test_startsWith", u"that", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_startsWith_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_startsWith_does_Method, self).__init__(u"classes.test_startsWith", u"does", _List([u"quark.bool"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_startsWith_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_startsWith_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_startsWith(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_startsWith, self).__init__(u"classes.test_startsWith");
        (self).name = u"classes.test_startsWith"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what"), quark.reflect.Field(u"quark.String", u"_that")])
        (self).methods = _List([classes_test_startsWith_that_Method(), classes_test_startsWith_does_Method(), classes_test_startsWith_check_Method()])

    def construct(self, args):
        return classes.test_startsWith((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_startsWith.singleton = classes_test_startsWith()

class classes_test_endsWith_that_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_endsWith_that_Method, self).__init__(u"classes.test_endsWith", u"that", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_endsWith_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_endsWith_does_Method, self).__init__(u"classes.test_endsWith", u"does", _List([u"quark.bool"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_endsWith_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_endsWith_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_endsWith(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_endsWith, self).__init__(u"classes.test_endsWith");
        (self).name = u"classes.test_endsWith"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what"), quark.reflect.Field(u"quark.String", u"_that")])
        (self).methods = _List([classes_test_endsWith_that_Method(), classes_test_endsWith_does_Method(), classes_test_endsWith_check_Method()])

    def construct(self, args):
        return classes.test_endsWith((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_endsWith.singleton = classes_test_endsWith()

class classes_test_find_that_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_find_that_Method, self).__init__(u"classes.test_find", u"that", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_find_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_find_does_Method, self).__init__(u"classes.test_find", u"does", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_find_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_find_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_find(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_find, self).__init__(u"classes.test_find");
        (self).name = u"classes.test_find"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what"), quark.reflect.Field(u"quark.String", u"_that")])
        (self).methods = _List([classes_test_find_that_Method(), classes_test_find_does_Method(), classes_test_find_check_Method()])

    def construct(self, args):
        return classes.test_find((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_find.singleton = classes_test_find()

class classes_test_substring_that_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_substring_that_Method, self).__init__(u"classes.test_substring", u"that", _List([u"quark.int", u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_substring_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_substring_does_Method, self).__init__(u"classes.test_substring", u"does", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_substring_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_substring_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_substring(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_substring, self).__init__(u"classes.test_substring");
        (self).name = u"classes.test_substring"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what"), quark.reflect.Field(u"quark.int", u"start"), quark.reflect.Field(u"quark.int", u"end")])
        (self).methods = _List([classes_test_substring_that_Method(), classes_test_substring_does_Method(), classes_test_substring_check_Method()])

    def construct(self, args):
        return classes.test_substring((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_substring.singleton = classes_test_substring()

class classes_test_replace_that_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_replace_that_Method, self).__init__(u"classes.test_replace", u"that", _List([u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_replace_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_replace_does_Method, self).__init__(u"classes.test_replace", u"does", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_replace_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_replace_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_replace(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_replace, self).__init__(u"classes.test_replace");
        (self).name = u"classes.test_replace"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what"), quark.reflect.Field(u"quark.String", u"start"), quark.reflect.Field(u"quark.String", u"end")])
        (self).methods = _List([classes_test_replace_that_Method(), classes_test_replace_does_Method(), classes_test_replace_check_Method()])

    def construct(self, args):
        return classes.test_replace((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_replace.singleton = classes_test_replace()

class classes_test_join_that_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_join_that_Method, self).__init__(u"classes.test_join", u"that", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_join_a_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_join_a_Method, self).__init__(u"classes.test_join", u"a", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).a((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_join_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_join_does_Method, self).__init__(u"classes.test_join", u"does", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_join_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_join_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_join(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_join, self).__init__(u"classes.test_join");
        (self).name = u"classes.test_join"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what"), quark.reflect.Field(u"quark.List<quark.String>", u"parts"), quark.reflect.Field(u"quark.String", u"strparts"), quark.reflect.Field(u"quark.String", u"sep")])
        (self).methods = _List([classes_test_join_that_Method(), classes_test_join_a_Method(), classes_test_join_does_Method(), classes_test_join_check_Method()])

    def construct(self, args):
        return classes.test_join((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_join.singleton = classes_test_join()

class classes_test_split_that_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_split_that_Method, self).__init__(u"classes.test_split", u"that", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_split_does_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_split_does_Method, self).__init__(u"classes.test_split", u"does", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_split_check_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_test_split_check_Method, self).__init__(u"quark.void", u"check", _List([u"quark.String", u"quark.String", u"quark.String", u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_test_split(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_test_split, self).__init__(u"classes.test_split");
        (self).name = u"classes.test_split"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"what"), quark.reflect.Field(u"quark.String", u"sep"), quark.reflect.Field(u"quark.String", u"altsep")])
        (self).methods = _List([classes_test_split_that_Method(), classes_test_split_does_Method(), classes_test_split_check_Method()])

    def construct(self, args):
        return classes.test_split((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_test_split.singleton = classes_test_split()

class classes_stuff_Test_foo_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_stuff_Test_foo_Method, self).__init__(u"classes.stuff.Test", u"foo", _List([u"classes.stuff.Test"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).foo((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_stuff_Test_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(classes_stuff_Test_test_Method, self).__init__(u"quark.void", u"test", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class classes_stuff_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(classes_stuff_Test, self).__init__(u"classes.stuff.Test");
        (self).name = u"classes.stuff.Test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([classes_stuff_Test_foo_Method(), classes_stuff_Test_test_Method()])

    def construct(self, args):
        return classes.stuff.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
classes_stuff_Test.singleton = classes_stuff_Test()

class statics_Foo_setCount_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(statics_Foo_setCount_Method, self).__init__(u"quark.void", u"setCount", _List([u"quark.int"]));

    def invoke(self, object, args):
        obj = object;
        statics.Foo.setCount((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class statics_Foo_getCount_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(statics_Foo_getCount_Method, self).__init__(u"quark.int", u"getCount", _List([]));

    def invoke(self, object, args):
        obj = object;
        return statics.Foo.getCount()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class statics_Foo_test1_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(statics_Foo_test1_Method, self).__init__(u"quark.void", u"test1", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test1();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class statics_Foo_test2_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(statics_Foo_test2_Method, self).__init__(u"quark.void", u"test2", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test2();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class statics_Foo_test3_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(statics_Foo_test3_Method, self).__init__(u"quark.void", u"test3", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test3();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class statics_Foo_test4_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(statics_Foo_test4_Method, self).__init__(u"quark.void", u"test4", _List([]));

    def invoke(self, object, args):
        obj = object;
        (obj).test4();
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class statics_Foo(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(statics_Foo, self).__init__(u"statics.Foo");
        (self).name = u"statics.Foo"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.int", u"count")])
        (self).methods = _List([statics_Foo_setCount_Method(), statics_Foo_getCount_Method(), statics_Foo_test1_Method(), statics_Foo_test2_Method(), statics_Foo_test3_Method(), statics_Foo_test4_Method()])

    def construct(self, args):
        return statics.Foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
statics_Foo.singleton = statics_Foo()

class docs_Test_test_Method(quark.reflect.Method):
    def _init(self):
        quark.reflect.Method._init(self)

    def __init__(self):
        super(docs_Test_test_Method, self).__init__(u"quark.int", u"test", _List([u"quark.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).test((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class docs_Test(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(docs_Test, self).__init__(u"docs.Test");
        (self).name = u"docs.Test"
        (self).parameters = _List([])
        (self).fields = _List([quark.reflect.Field(u"quark.String", u"name")])
        (self).methods = _List([docs_Test_test_Method()])

    def construct(self, args):
        return docs.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
docs_Test.singleton = docs_Test()

class quark_List_quark_List_quark_Object__(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_List_quark_Object__, self).__init__(u"quark.List<quark.List<quark.Object>>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.List<quark.Object>"])
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
quark_List_quark_List_quark_Object__.singleton = quark_List_quark_List_quark_Object__()

class quark_List_quark_Object_(quark.reflect.Class):
    def _init(self):
        quark.reflect.Class._init(self)

    def __init__(self):
        super(quark_List_quark_Object_, self).__init__(u"quark.List<quark.Object>");
        (self).name = u"quark.List"
        (self).parameters = _List([u"quark.Object"])
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
quark_List_quark_Object_.singleton = quark_List_quark_Object_()

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
Root.generics_Box_quark_Object__md = generics_Box_quark_Object_.singleton
Root.generics_Box_quark_int__md = generics_Box_quark_int_.singleton
Root.generics_Crate_quark_Object__md = generics_Crate_quark_Object_.singleton
Root.generics_Sack_md = generics_Sack.singleton
Root.generics_Matrix_quark_Object__md = generics_Matrix_quark_Object_.singleton
Root.generics_constructors_Box_quark_Object__md = generics_constructors_Box_quark_Object_.singleton
Root.generics_pkg_Foo_quark_Object__md = generics_pkg_Foo_quark_Object_.singleton
Root.generics_pkg_StringFoo_md = generics_pkg_StringFoo.singleton
Root.generics_pkg_Box_quark_String__md = generics_pkg_Box_quark_String_.singleton
Root.generics_pkg_StringBox_md = generics_pkg_StringBox.singleton
Root.generics_ccc_TLSContextInitializer_md = generics_ccc_TLSContextInitializer.singleton
Root.generics_ccc_Context_md = generics_ccc_Context.singleton
Root.generics_ccc_TLSInitializer_quark_Object__md = generics_ccc_TLSInitializer_quark_Object_.singleton
Root.generics_ccc_TLS_generics_ccc_Context__md = generics_ccc_TLS_generics_ccc_Context_.singleton
Root.inheritance_Base_md = inheritance_Base.singleton
Root.inheritance_Test_md = inheritance_Test.singleton
Root.inheritance_A_md = inheritance_A.singleton
Root.inheritance_B_md = inheritance_B.singleton
Root.inheritance_C_md = inheritance_C.singleton
Root.inheritance_X_md = inheritance_X.singleton
Root.inheritance_Y_md = inheritance_Y.singleton
Root.inheritance_t1_A_md = inheritance_t1_A.singleton
Root.inheritance_t1_B_md = inheritance_t1_B.singleton
Root.inheritance_t1_C_md = inheritance_t1_C.singleton
Root.inheritance_t2_A_md = inheritance_t2_A.singleton
Root.inheritance_t2_B_md = inheritance_t2_B.singleton
Root.inheritance_t2_X_quark_int__md = inheritance_t2_X_quark_int_.singleton
Root.inheritance_t2_Y_md = inheritance_t2_Y.singleton
Root.inheritance_pets_Cat_md = inheritance_pets_Cat.singleton
Root.inheritance_pets_Dog_md = inheritance_pets_Dog.singleton
Root.inheritance_Message_md = inheritance_Message.singleton
Root.inheritance_Ping_md = inheritance_Ping.singleton
Root.inheritance_Pong_md = inheritance_Pong.singleton
Root.inheritance_super__A_md = inheritance_super__A.singleton
Root.inheritance_super__B_md = inheritance_super__B.singleton
Root.inheritance_use_before_def_Bar_md = inheritance_use_before_def_Bar.singleton
Root.inheritance_use_before_def_Foo_md = inheritance_use_before_def_Foo.singleton
Root.interfaces_A_md = interfaces_A.singleton
Root.interfaces_B_md = interfaces_B.singleton
Root.interfaces_C_md = interfaces_C.singleton
Root.interfaces_T1_md = interfaces_T1.singleton
Root.interfaces_T2_md = interfaces_T2.singleton
Root.interfaces_T3_md = interfaces_T3.singleton
Root.interfaces_T4_md = interfaces_T4.singleton
Root.interfaces_T5_md = interfaces_T5.singleton
Root.interfaces_Foo_md = interfaces_Foo.singleton
Root.interfaces_Bar_quark_Object__md = interfaces_Bar_quark_Object_.singleton
Root.interfaces_Baz_md = interfaces_Baz.singleton
Root.interfaces_RazBar_md = interfaces_RazBar.singleton
Root.interfaces_RazFaz_quark_Object__md = interfaces_RazFaz_quark_Object_.singleton
Root.interfaces_BazBar_md = interfaces_BazBar.singleton
Root.interfaces_BazFaz_quark_Object__md = interfaces_BazFaz_quark_Object_.singleton
Root.classes_Overload_md = classes_Overload.singleton
Root.classes_Test_md = classes_Test.singleton
Root.classes_string_test_md = classes_string_test.singleton
Root.classes_test_size_md = classes_test_size.singleton
Root.classes_test_startsWith_md = classes_test_startsWith.singleton
Root.classes_test_endsWith_md = classes_test_endsWith.singleton
Root.classes_test_find_md = classes_test_find.singleton
Root.classes_test_substring_md = classes_test_substring.singleton
Root.classes_test_replace_md = classes_test_replace.singleton
Root.classes_test_join_md = classes_test_join.singleton
Root.classes_test_split_md = classes_test_split.singleton
Root.classes_stuff_Test_md = classes_stuff_Test.singleton
Root.statics_Foo_md = statics_Foo.singleton
Root.docs_Test_md = docs_Test.singleton
Root.quark_List_quark_List_quark_Object___md = quark_List_quark_List_quark_Object__.singleton
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton
Root.quark_List_quark_String__md = quark_List_quark_String_.singleton

import generics
import generics.constructors
import generics.pkg
import generics.ccc
import inheritance
import inheritance.t1
import inheritance.t2
import inheritance.pets
import inheritance.super_
import inheritance.use_before_def
import interfaces
import classes
import classes.stuff
import statics
import docs
