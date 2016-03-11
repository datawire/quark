from quark_runtime import *

import builtin.reflect


class delegate_Message_encode_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Message_encode_Method, self).__init__(u"builtin.String", u"encode", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).encode()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Message(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(delegate_Message, self).__init__(u"delegate.Message");
        (self).name = u"delegate.Message"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([delegate_Message_encode_Method()])

    def construct(self, args):
        return delegate.Message()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
delegate_Message.singleton = delegate_Message()

class delegate_Ping_encode_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Ping_encode_Method, self).__init__(u"builtin.String", u"encode", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).encode()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Ping(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(delegate_Ping, self).__init__(u"delegate.Ping");
        (self).name = u"delegate.Ping"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([delegate_Ping_encode_Method()])

    def construct(self, args):
        return delegate.Ping()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
delegate_Ping.singleton = delegate_Ping()

class delegate_Pong_toString_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Pong_toString_Method, self).__init__(u"builtin.String", u"toString", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).toString()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Pong_encode_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Pong_encode_Method, self).__init__(u"builtin.String", u"encode", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).encode()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Pong(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(delegate_Pong, self).__init__(u"delegate.Pong");
        (self).name = u"delegate.Pong"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([delegate_Pong_toString_Method(), delegate_Pong_encode_Method()])

    def construct(self, args):
        return delegate.Pong()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
delegate_Pong.singleton = delegate_Pong()

class delegate_Test_bar_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Test_bar_Method, self).__init__(u"builtin.Object", u"bar", _List([u"builtin.String", u"builtin.List<builtin.Object>", u"builtin.List<builtin.Object>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).bar((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Test_foo_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Test_foo_Method, self).__init__(u"builtin.void", u"foo", _List([u"builtin.String", u"builtin.String", u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        (obj).foo((args)[0], (args)[1], (args)[2]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Test_rpc_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Test_rpc_Method, self).__init__(u"delegate.Message", u"rpc", _List([u"builtin.String", u"delegate.Message", u"builtin.List<builtin.Object>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).rpc((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Test_hello_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(delegate_Test_hello_Method, self).__init__(u"delegate.Pong", u"hello", _List([u"delegate.Ping"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).hello((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class delegate_Test(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(delegate_Test, self).__init__(u"delegate.Test");
        (self).name = u"delegate.Test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([delegate_Test_bar_Method(), delegate_Test_foo_Method(), delegate_Test_rpc_Method(), delegate_Test_hello_Method()])

    def construct(self, args):
        return delegate.Test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
delegate_Test.singleton = delegate_Test()

class builtin_List_builtin_Object_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_Object_, self).__init__(u"builtin.List<builtin.Object>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.Object"])
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
builtin_List_builtin_Object_.singleton = builtin_List_builtin_Object_()

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
Root.delegate_Message_md = delegate_Message.singleton
Root.delegate_Ping_md = delegate_Ping.singleton
Root.delegate_Pong_md = delegate_Pong.singleton
Root.delegate_Test_md = delegate_Test.singleton
Root.builtin_List_builtin_Object__md = builtin_List_builtin_Object_.singleton

import delegate
