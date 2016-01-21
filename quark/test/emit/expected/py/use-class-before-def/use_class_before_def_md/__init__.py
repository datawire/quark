from quark_runtime import *

import reflect


class pkg_Bar_go_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(pkg_Bar_go_Method, self).__init__(u"builtin.void", u"go", _List([]));

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

class pkg_Bar(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(pkg_Bar, self).__init__(u"pkg.Bar");
        (self).name = u"Bar"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([pkg_Bar_go_Method()])

    def construct(self, args):
        return pkg.Bar()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Bar.singleton = pkg_Bar()

class pkg_Foo(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(pkg_Foo, self).__init__(u"pkg.Foo");
        (self).name = u"Foo"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return pkg.Foo()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
pkg_Foo.singleton = pkg_Foo()

class builtin_ResponseHolder_onHTTPResponse_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_ResponseHolder_onHTTPResponse_Method, self).__init__(u"builtin.void", u"onHTTPResponse", _List([u"builtin.HTTPRequest", u"builtin.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPResponse((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_ResponseHolder_onHTTPError_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_ResponseHolder_onHTTPError_Method, self).__init__(u"builtin.void", u"onHTTPError", _List([u"builtin.HTTPRequest", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_ResponseHolder(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_ResponseHolder, self).__init__(u"builtin.ResponseHolder");
        (self).name = u"ResponseHolder"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.HTTPResponse", u"response"), reflect.Field(u"builtin.String", u"failure")])
        (self).methods = _List([builtin_ResponseHolder_onHTTPResponse_Method(), builtin_ResponseHolder_onHTTPError_Method()])

    def construct(self, args):
        return builtin.ResponseHolder()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_ResponseHolder.singleton = builtin_ResponseHolder()

class builtin_Service_getURL_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_getURL_Method, self).__init__(u"builtin.String", u"getURL", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getURL()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service_getRuntime_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_getRuntime_Method, self).__init__(u"builtin.Runtime", u"getRuntime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getRuntime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service_getTimeout_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_getTimeout_Method, self).__init__(u"builtin.long", u"getTimeout", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getTimeout()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service_rpc_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Service_rpc_Method, self).__init__(u"builtin.Object", u"rpc", _List([u"builtin.String", u"builtin.Object", u"builtin.List<builtin.Object>"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).rpc((args)[0], (args)[1], (args)[2])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Service(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_Service, self).__init__(u"builtin.Service");
        (self).name = u"Service"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([builtin_Service_getURL_Method(), builtin_Service_getRuntime_Method(), builtin_Service_getTimeout_Method(), builtin_Service_rpc_Method()])

    def construct(self, args):
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Service.singleton = builtin_Service()

class builtin_Client_getRuntime_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_getRuntime_Method, self).__init__(u"builtin.Runtime", u"getRuntime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getRuntime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client_getURL_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_getURL_Method, self).__init__(u"builtin.String", u"getURL", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getURL()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client_getTimeout_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_getTimeout_Method, self).__init__(u"builtin.long", u"getTimeout", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getTimeout()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client_setTimeout_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Client_setTimeout_Method, self).__init__(u"builtin.void", u"setTimeout", _List([u"builtin.long"]));

    def invoke(self, object, args):
        obj = object;
        (obj).setTimeout((args)[0]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Client(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_Client, self).__init__(u"builtin.Client");
        (self).name = u"Client"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.Runtime", u"runtime"), reflect.Field(u"builtin.String", u"url"), reflect.Field(u"builtin.long", u"timeout")])
        (self).methods = _List([builtin_Client_getRuntime_Method(), builtin_Client_getURL_Method(), builtin_Client_getTimeout_Method(), builtin_Client_setTimeout_Method()])

    def construct(self, args):
        return builtin.Client((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Client.singleton = builtin_Client()

class builtin_Server_Object__getRuntime_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Server_Object__getRuntime_Method, self).__init__(u"builtin.Runtime", u"getRuntime", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).getRuntime()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Server_Object__onHTTPRequest_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Server_Object__onHTTPRequest_Method, self).__init__(u"builtin.void", u"onHTTPRequest", _List([u"builtin.HTTPRequest", u"builtin.HTTPResponse"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onHTTPRequest((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Server_Object__onServletError_Method(reflect.Method):
    def _init(self):
        reflect.Method._init(self)

    def __init__(self):
        super(builtin_Server_Object__onServletError_Method, self).__init__(u"builtin.void", u"onServletError", _List([u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).onServletError((args)[0], (args)[1]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class builtin_Server_Object_(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(builtin_Server_Object_, self).__init__(u"builtin.Server<Object>");
        (self).name = u"Server"
        (self).parameters = _List([u"Object"])
        (self).fields = _List([reflect.Field(u"builtin.Runtime", u"runtime"), reflect.Field(u"Object", u"impl")])
        (self).methods = _List([builtin_Server_Object__getRuntime_Method(), builtin_Server_Object__onHTTPRequest_Method(), builtin_Server_Object__onServletError_Method()])

    def construct(self, args):
        return builtin.Server((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_Server_Object_.singleton = builtin_Server_Object_()

class reflect_Class(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(reflect_Class, self).__init__(u"reflect.Class");
        (self).name = u"Class"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.Map<builtin.String,reflect.Class>", u"classes"), reflect.Field(u"reflect.Class", u"VOID"), reflect.Field(u"reflect.Class", u"BOOL"), reflect.Field(u"reflect.Class", u"INT"), reflect.Field(u"reflect.Class", u"LONG"), reflect.Field(u"reflect.Class", u"STRING"), reflect.Field(u"builtin.String", u"id"), reflect.Field(u"builtin.String", u"name"), reflect.Field(u"builtin.List<reflect.Class>", u"parameters"), reflect.Field(u"builtin.List<reflect.Field>", u"fields"), reflect.Field(u"builtin.List<reflect.Method>", u"methods")])
        (self).methods = _List([])

    def construct(self, args):
        return reflect.Class((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
reflect_Class.singleton = reflect_Class()

class reflect_Field(reflect.Class):
    def _init(self):
        reflect.Class._init(self)

    def __init__(self):
        super(reflect_Field, self).__init__(u"reflect.Field");
        (self).name = u"Field"
        (self).parameters = _List([])
        (self).fields = _List([reflect.Field(u"builtin.String", u"type"), reflect.Field(u"builtin.String", u"name")])
        (self).methods = _List([])

    def construct(self, args):
        return reflect.Field((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
reflect_Field.singleton = reflect_Field()

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
Root.pkg_Bar_md = pkg_Bar.singleton
Root.pkg_Foo_md = pkg_Foo.singleton
Root.builtin_ResponseHolder_md = builtin_ResponseHolder.singleton
Root.builtin_Service_md = builtin_Service.singleton
Root.builtin_Client_md = builtin_Client.singleton
Root.builtin_Server_Object__md = builtin_Server_Object_.singleton

import pkg
import builtin
