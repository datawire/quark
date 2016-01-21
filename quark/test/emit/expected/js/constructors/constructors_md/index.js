var _qrt = require("datawire-quark-core");
var reflect = require('builtin').reflect;
exports.reflect = reflect;



// CLASS test1_Test

function test1_Test() {
    test1_Test.super_.call(this, "test1.Test");
    (this).name = "Test";
    (this).parameters = [];
    (this).fields = [new reflect.Field("builtin.String", "name")];
    (this).methods = [];
}
exports.test1_Test = test1_Test;
_qrt.util.inherits(test1_Test, reflect.Class);

function test1_Test__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
test1_Test.prototype.__init_fields__ = test1_Test__init_fields__;
test1_Test.singleton = new test1_Test();
function test1_Test_construct(args) {
    return new test1.Test();
}
test1_Test.prototype.construct = test1_Test_construct;

function test1_Test__getClass() {
    return null;
}
test1_Test.prototype._getClass = test1_Test__getClass;

function test1_Test__getField(name) {
    return null;
}
test1_Test.prototype._getField = test1_Test__getField;

function test1_Test__setField(name, value) {}
test1_Test.prototype._setField = test1_Test__setField;


// CLASS test2_Test

function test2_Test() {
    test2_Test.super_.call(this, "test2.Test");
    (this).name = "Test";
    (this).parameters = [];
    (this).fields = [new reflect.Field("builtin.String", "name")];
    (this).methods = [];
}
exports.test2_Test = test2_Test;
_qrt.util.inherits(test2_Test, reflect.Class);

function test2_Test__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
test2_Test.prototype.__init_fields__ = test2_Test__init_fields__;
test2_Test.singleton = new test2_Test();
function test2_Test_construct(args) {
    return new test2.Test((args)[0]);
}
test2_Test.prototype.construct = test2_Test_construct;

function test2_Test__getClass() {
    return null;
}
test2_Test.prototype._getClass = test2_Test__getClass;

function test2_Test__getField(name) {
    return null;
}
test2_Test.prototype._getField = test2_Test__getField;

function test2_Test__setField(name, value) {}
test2_Test.prototype._setField = test2_Test__setField;


// CLASS test3_Box_builtin_String__get_Method

function test3_Box_builtin_String__get_Method() {
    test3_Box_builtin_String__get_Method.super_.call(this, "builtin.String", "get", []);
}
exports.test3_Box_builtin_String__get_Method = test3_Box_builtin_String__get_Method;
_qrt.util.inherits(test3_Box_builtin_String__get_Method, reflect.Method);

function test3_Box_builtin_String__get_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
test3_Box_builtin_String__get_Method.prototype.__init_fields__ = test3_Box_builtin_String__get_Method__init_fields__;

function test3_Box_builtin_String__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
test3_Box_builtin_String__get_Method.prototype.invoke = test3_Box_builtin_String__get_Method_invoke;

function test3_Box_builtin_String__get_Method__getClass() {
    return null;
}
test3_Box_builtin_String__get_Method.prototype._getClass = test3_Box_builtin_String__get_Method__getClass;

function test3_Box_builtin_String__get_Method__getField(name) {
    return null;
}
test3_Box_builtin_String__get_Method.prototype._getField = test3_Box_builtin_String__get_Method__getField;

function test3_Box_builtin_String__get_Method__setField(name, value) {}
test3_Box_builtin_String__get_Method.prototype._setField = test3_Box_builtin_String__get_Method__setField;

// CLASS test3_Box_builtin_String_

function test3_Box_builtin_String_() {
    test3_Box_builtin_String_.super_.call(this, "test3.Box<builtin.String>");
    (this).name = "Box";
    (this).parameters = ["builtin.String"];
    (this).fields = [new reflect.Field("builtin.String", "contents")];
    (this).methods = [new test3_Box_builtin_String__get_Method()];
}
exports.test3_Box_builtin_String_ = test3_Box_builtin_String_;
_qrt.util.inherits(test3_Box_builtin_String_, reflect.Class);

function test3_Box_builtin_String___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
test3_Box_builtin_String_.prototype.__init_fields__ = test3_Box_builtin_String___init_fields__;
test3_Box_builtin_String_.singleton = new test3_Box_builtin_String_();
function test3_Box_builtin_String__construct(args) {
    return new test3.Box((args)[0]);
}
test3_Box_builtin_String_.prototype.construct = test3_Box_builtin_String__construct;

function test3_Box_builtin_String___getClass() {
    return null;
}
test3_Box_builtin_String_.prototype._getClass = test3_Box_builtin_String___getClass;

function test3_Box_builtin_String___getField(name) {
    return null;
}
test3_Box_builtin_String_.prototype._getField = test3_Box_builtin_String___getField;

function test3_Box_builtin_String___setField(name, value) {}
test3_Box_builtin_String_.prototype._setField = test3_Box_builtin_String___setField;


// CLASS builtin_ResponseHolder_onHTTPResponse_Method

function builtin_ResponseHolder_onHTTPResponse_Method() {
    builtin_ResponseHolder_onHTTPResponse_Method.super_.call(this, "builtin.void", "onHTTPResponse", ["builtin.HTTPRequest", "builtin.HTTPResponse"]);
}
exports.builtin_ResponseHolder_onHTTPResponse_Method = builtin_ResponseHolder_onHTTPResponse_Method;
_qrt.util.inherits(builtin_ResponseHolder_onHTTPResponse_Method, reflect.Method);

function builtin_ResponseHolder_onHTTPResponse_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_ResponseHolder_onHTTPResponse_Method.prototype.__init_fields__ = builtin_ResponseHolder_onHTTPResponse_Method__init_fields__;

function builtin_ResponseHolder_onHTTPResponse_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPResponse((args)[0], (args)[1]);
    return null;
}
builtin_ResponseHolder_onHTTPResponse_Method.prototype.invoke = builtin_ResponseHolder_onHTTPResponse_Method_invoke;

function builtin_ResponseHolder_onHTTPResponse_Method__getClass() {
    return null;
}
builtin_ResponseHolder_onHTTPResponse_Method.prototype._getClass = builtin_ResponseHolder_onHTTPResponse_Method__getClass;

function builtin_ResponseHolder_onHTTPResponse_Method__getField(name) {
    return null;
}
builtin_ResponseHolder_onHTTPResponse_Method.prototype._getField = builtin_ResponseHolder_onHTTPResponse_Method__getField;

function builtin_ResponseHolder_onHTTPResponse_Method__setField(name, value) {}
builtin_ResponseHolder_onHTTPResponse_Method.prototype._setField = builtin_ResponseHolder_onHTTPResponse_Method__setField;

// CLASS builtin_ResponseHolder_onHTTPError_Method

function builtin_ResponseHolder_onHTTPError_Method() {
    builtin_ResponseHolder_onHTTPError_Method.super_.call(this, "builtin.void", "onHTTPError", ["builtin.HTTPRequest", "builtin.String"]);
}
exports.builtin_ResponseHolder_onHTTPError_Method = builtin_ResponseHolder_onHTTPError_Method;
_qrt.util.inherits(builtin_ResponseHolder_onHTTPError_Method, reflect.Method);

function builtin_ResponseHolder_onHTTPError_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_ResponseHolder_onHTTPError_Method.prototype.__init_fields__ = builtin_ResponseHolder_onHTTPError_Method__init_fields__;

function builtin_ResponseHolder_onHTTPError_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPError((args)[0], (args)[1]);
    return null;
}
builtin_ResponseHolder_onHTTPError_Method.prototype.invoke = builtin_ResponseHolder_onHTTPError_Method_invoke;

function builtin_ResponseHolder_onHTTPError_Method__getClass() {
    return null;
}
builtin_ResponseHolder_onHTTPError_Method.prototype._getClass = builtin_ResponseHolder_onHTTPError_Method__getClass;

function builtin_ResponseHolder_onHTTPError_Method__getField(name) {
    return null;
}
builtin_ResponseHolder_onHTTPError_Method.prototype._getField = builtin_ResponseHolder_onHTTPError_Method__getField;

function builtin_ResponseHolder_onHTTPError_Method__setField(name, value) {}
builtin_ResponseHolder_onHTTPError_Method.prototype._setField = builtin_ResponseHolder_onHTTPError_Method__setField;

// CLASS builtin_ResponseHolder

function builtin_ResponseHolder() {
    builtin_ResponseHolder.super_.call(this, "builtin.ResponseHolder");
    (this).name = "ResponseHolder";
    (this).parameters = [];
    (this).fields = [new reflect.Field("builtin.HTTPResponse", "response"), new reflect.Field("builtin.String", "failure")];
    (this).methods = [new builtin_ResponseHolder_onHTTPResponse_Method(), new builtin_ResponseHolder_onHTTPError_Method()];
}
exports.builtin_ResponseHolder = builtin_ResponseHolder;
_qrt.util.inherits(builtin_ResponseHolder, reflect.Class);

function builtin_ResponseHolder__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
builtin_ResponseHolder.prototype.__init_fields__ = builtin_ResponseHolder__init_fields__;
builtin_ResponseHolder.singleton = new builtin_ResponseHolder();
function builtin_ResponseHolder_construct(args) {
    return new builtin.ResponseHolder();
}
builtin_ResponseHolder.prototype.construct = builtin_ResponseHolder_construct;

function builtin_ResponseHolder__getClass() {
    return null;
}
builtin_ResponseHolder.prototype._getClass = builtin_ResponseHolder__getClass;

function builtin_ResponseHolder__getField(name) {
    return null;
}
builtin_ResponseHolder.prototype._getField = builtin_ResponseHolder__getField;

function builtin_ResponseHolder__setField(name, value) {}
builtin_ResponseHolder.prototype._setField = builtin_ResponseHolder__setField;


// CLASS builtin_Service_getURL_Method

function builtin_Service_getURL_Method() {
    builtin_Service_getURL_Method.super_.call(this, "builtin.String", "getURL", []);
}
exports.builtin_Service_getURL_Method = builtin_Service_getURL_Method;
_qrt.util.inherits(builtin_Service_getURL_Method, reflect.Method);

function builtin_Service_getURL_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Service_getURL_Method.prototype.__init_fields__ = builtin_Service_getURL_Method__init_fields__;

function builtin_Service_getURL_Method_invoke(object, args) {
    var obj = object;
    return (obj).getURL();
}
builtin_Service_getURL_Method.prototype.invoke = builtin_Service_getURL_Method_invoke;

function builtin_Service_getURL_Method__getClass() {
    return null;
}
builtin_Service_getURL_Method.prototype._getClass = builtin_Service_getURL_Method__getClass;

function builtin_Service_getURL_Method__getField(name) {
    return null;
}
builtin_Service_getURL_Method.prototype._getField = builtin_Service_getURL_Method__getField;

function builtin_Service_getURL_Method__setField(name, value) {}
builtin_Service_getURL_Method.prototype._setField = builtin_Service_getURL_Method__setField;

// CLASS builtin_Service_getRuntime_Method

function builtin_Service_getRuntime_Method() {
    builtin_Service_getRuntime_Method.super_.call(this, "builtin.Runtime", "getRuntime", []);
}
exports.builtin_Service_getRuntime_Method = builtin_Service_getRuntime_Method;
_qrt.util.inherits(builtin_Service_getRuntime_Method, reflect.Method);

function builtin_Service_getRuntime_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Service_getRuntime_Method.prototype.__init_fields__ = builtin_Service_getRuntime_Method__init_fields__;

function builtin_Service_getRuntime_Method_invoke(object, args) {
    var obj = object;
    return (obj).getRuntime();
}
builtin_Service_getRuntime_Method.prototype.invoke = builtin_Service_getRuntime_Method_invoke;

function builtin_Service_getRuntime_Method__getClass() {
    return null;
}
builtin_Service_getRuntime_Method.prototype._getClass = builtin_Service_getRuntime_Method__getClass;

function builtin_Service_getRuntime_Method__getField(name) {
    return null;
}
builtin_Service_getRuntime_Method.prototype._getField = builtin_Service_getRuntime_Method__getField;

function builtin_Service_getRuntime_Method__setField(name, value) {}
builtin_Service_getRuntime_Method.prototype._setField = builtin_Service_getRuntime_Method__setField;

// CLASS builtin_Service_getTimeout_Method

function builtin_Service_getTimeout_Method() {
    builtin_Service_getTimeout_Method.super_.call(this, "builtin.long", "getTimeout", []);
}
exports.builtin_Service_getTimeout_Method = builtin_Service_getTimeout_Method;
_qrt.util.inherits(builtin_Service_getTimeout_Method, reflect.Method);

function builtin_Service_getTimeout_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Service_getTimeout_Method.prototype.__init_fields__ = builtin_Service_getTimeout_Method__init_fields__;

function builtin_Service_getTimeout_Method_invoke(object, args) {
    var obj = object;
    return (obj).getTimeout();
}
builtin_Service_getTimeout_Method.prototype.invoke = builtin_Service_getTimeout_Method_invoke;

function builtin_Service_getTimeout_Method__getClass() {
    return null;
}
builtin_Service_getTimeout_Method.prototype._getClass = builtin_Service_getTimeout_Method__getClass;

function builtin_Service_getTimeout_Method__getField(name) {
    return null;
}
builtin_Service_getTimeout_Method.prototype._getField = builtin_Service_getTimeout_Method__getField;

function builtin_Service_getTimeout_Method__setField(name, value) {}
builtin_Service_getTimeout_Method.prototype._setField = builtin_Service_getTimeout_Method__setField;

// CLASS builtin_Service_rpc_Method

function builtin_Service_rpc_Method() {
    builtin_Service_rpc_Method.super_.call(this, "builtin.Object", "rpc", ["builtin.String", "builtin.Object", "builtin.List<builtin.Object>"]);
}
exports.builtin_Service_rpc_Method = builtin_Service_rpc_Method;
_qrt.util.inherits(builtin_Service_rpc_Method, reflect.Method);

function builtin_Service_rpc_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Service_rpc_Method.prototype.__init_fields__ = builtin_Service_rpc_Method__init_fields__;

function builtin_Service_rpc_Method_invoke(object, args) {
    var obj = object;
    return (obj).rpc((args)[0], (args)[1], (args)[2]);
}
builtin_Service_rpc_Method.prototype.invoke = builtin_Service_rpc_Method_invoke;

function builtin_Service_rpc_Method__getClass() {
    return null;
}
builtin_Service_rpc_Method.prototype._getClass = builtin_Service_rpc_Method__getClass;

function builtin_Service_rpc_Method__getField(name) {
    return null;
}
builtin_Service_rpc_Method.prototype._getField = builtin_Service_rpc_Method__getField;

function builtin_Service_rpc_Method__setField(name, value) {}
builtin_Service_rpc_Method.prototype._setField = builtin_Service_rpc_Method__setField;

// CLASS builtin_Service

function builtin_Service() {
    builtin_Service.super_.call(this, "builtin.Service");
    (this).name = "Service";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new builtin_Service_getURL_Method(), new builtin_Service_getRuntime_Method(), new builtin_Service_getTimeout_Method(), new builtin_Service_rpc_Method()];
}
exports.builtin_Service = builtin_Service;
_qrt.util.inherits(builtin_Service, reflect.Class);

function builtin_Service__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
builtin_Service.prototype.__init_fields__ = builtin_Service__init_fields__;
builtin_Service.singleton = new builtin_Service();
function builtin_Service_construct(args) {
    return null;
}
builtin_Service.prototype.construct = builtin_Service_construct;

function builtin_Service__getClass() {
    return null;
}
builtin_Service.prototype._getClass = builtin_Service__getClass;

function builtin_Service__getField(name) {
    return null;
}
builtin_Service.prototype._getField = builtin_Service__getField;

function builtin_Service__setField(name, value) {}
builtin_Service.prototype._setField = builtin_Service__setField;


// CLASS builtin_Client_getRuntime_Method

function builtin_Client_getRuntime_Method() {
    builtin_Client_getRuntime_Method.super_.call(this, "builtin.Runtime", "getRuntime", []);
}
exports.builtin_Client_getRuntime_Method = builtin_Client_getRuntime_Method;
_qrt.util.inherits(builtin_Client_getRuntime_Method, reflect.Method);

function builtin_Client_getRuntime_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Client_getRuntime_Method.prototype.__init_fields__ = builtin_Client_getRuntime_Method__init_fields__;

function builtin_Client_getRuntime_Method_invoke(object, args) {
    var obj = object;
    return (obj).getRuntime();
}
builtin_Client_getRuntime_Method.prototype.invoke = builtin_Client_getRuntime_Method_invoke;

function builtin_Client_getRuntime_Method__getClass() {
    return null;
}
builtin_Client_getRuntime_Method.prototype._getClass = builtin_Client_getRuntime_Method__getClass;

function builtin_Client_getRuntime_Method__getField(name) {
    return null;
}
builtin_Client_getRuntime_Method.prototype._getField = builtin_Client_getRuntime_Method__getField;

function builtin_Client_getRuntime_Method__setField(name, value) {}
builtin_Client_getRuntime_Method.prototype._setField = builtin_Client_getRuntime_Method__setField;

// CLASS builtin_Client_getURL_Method

function builtin_Client_getURL_Method() {
    builtin_Client_getURL_Method.super_.call(this, "builtin.String", "getURL", []);
}
exports.builtin_Client_getURL_Method = builtin_Client_getURL_Method;
_qrt.util.inherits(builtin_Client_getURL_Method, reflect.Method);

function builtin_Client_getURL_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Client_getURL_Method.prototype.__init_fields__ = builtin_Client_getURL_Method__init_fields__;

function builtin_Client_getURL_Method_invoke(object, args) {
    var obj = object;
    return (obj).getURL();
}
builtin_Client_getURL_Method.prototype.invoke = builtin_Client_getURL_Method_invoke;

function builtin_Client_getURL_Method__getClass() {
    return null;
}
builtin_Client_getURL_Method.prototype._getClass = builtin_Client_getURL_Method__getClass;

function builtin_Client_getURL_Method__getField(name) {
    return null;
}
builtin_Client_getURL_Method.prototype._getField = builtin_Client_getURL_Method__getField;

function builtin_Client_getURL_Method__setField(name, value) {}
builtin_Client_getURL_Method.prototype._setField = builtin_Client_getURL_Method__setField;

// CLASS builtin_Client_getTimeout_Method

function builtin_Client_getTimeout_Method() {
    builtin_Client_getTimeout_Method.super_.call(this, "builtin.long", "getTimeout", []);
}
exports.builtin_Client_getTimeout_Method = builtin_Client_getTimeout_Method;
_qrt.util.inherits(builtin_Client_getTimeout_Method, reflect.Method);

function builtin_Client_getTimeout_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Client_getTimeout_Method.prototype.__init_fields__ = builtin_Client_getTimeout_Method__init_fields__;

function builtin_Client_getTimeout_Method_invoke(object, args) {
    var obj = object;
    return (obj).getTimeout();
}
builtin_Client_getTimeout_Method.prototype.invoke = builtin_Client_getTimeout_Method_invoke;

function builtin_Client_getTimeout_Method__getClass() {
    return null;
}
builtin_Client_getTimeout_Method.prototype._getClass = builtin_Client_getTimeout_Method__getClass;

function builtin_Client_getTimeout_Method__getField(name) {
    return null;
}
builtin_Client_getTimeout_Method.prototype._getField = builtin_Client_getTimeout_Method__getField;

function builtin_Client_getTimeout_Method__setField(name, value) {}
builtin_Client_getTimeout_Method.prototype._setField = builtin_Client_getTimeout_Method__setField;

// CLASS builtin_Client_setTimeout_Method

function builtin_Client_setTimeout_Method() {
    builtin_Client_setTimeout_Method.super_.call(this, "builtin.void", "setTimeout", ["builtin.long"]);
}
exports.builtin_Client_setTimeout_Method = builtin_Client_setTimeout_Method;
_qrt.util.inherits(builtin_Client_setTimeout_Method, reflect.Method);

function builtin_Client_setTimeout_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Client_setTimeout_Method.prototype.__init_fields__ = builtin_Client_setTimeout_Method__init_fields__;

function builtin_Client_setTimeout_Method_invoke(object, args) {
    var obj = object;
    (obj).setTimeout((args)[0]);
    return null;
}
builtin_Client_setTimeout_Method.prototype.invoke = builtin_Client_setTimeout_Method_invoke;

function builtin_Client_setTimeout_Method__getClass() {
    return null;
}
builtin_Client_setTimeout_Method.prototype._getClass = builtin_Client_setTimeout_Method__getClass;

function builtin_Client_setTimeout_Method__getField(name) {
    return null;
}
builtin_Client_setTimeout_Method.prototype._getField = builtin_Client_setTimeout_Method__getField;

function builtin_Client_setTimeout_Method__setField(name, value) {}
builtin_Client_setTimeout_Method.prototype._setField = builtin_Client_setTimeout_Method__setField;

// CLASS builtin_Client

function builtin_Client() {
    builtin_Client.super_.call(this, "builtin.Client");
    (this).name = "Client";
    (this).parameters = [];
    (this).fields = [new reflect.Field("builtin.Runtime", "runtime"), new reflect.Field("builtin.String", "url"), new reflect.Field("builtin.long", "timeout")];
    (this).methods = [new builtin_Client_getRuntime_Method(), new builtin_Client_getURL_Method(), new builtin_Client_getTimeout_Method(), new builtin_Client_setTimeout_Method()];
}
exports.builtin_Client = builtin_Client;
_qrt.util.inherits(builtin_Client, reflect.Class);

function builtin_Client__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
builtin_Client.prototype.__init_fields__ = builtin_Client__init_fields__;
builtin_Client.singleton = new builtin_Client();
function builtin_Client_construct(args) {
    return new builtin.Client((args)[0], (args)[1]);
}
builtin_Client.prototype.construct = builtin_Client_construct;

function builtin_Client__getClass() {
    return null;
}
builtin_Client.prototype._getClass = builtin_Client__getClass;

function builtin_Client__getField(name) {
    return null;
}
builtin_Client.prototype._getField = builtin_Client__getField;

function builtin_Client__setField(name, value) {}
builtin_Client.prototype._setField = builtin_Client__setField;


// CLASS builtin_Server_Object__getRuntime_Method

function builtin_Server_Object__getRuntime_Method() {
    builtin_Server_Object__getRuntime_Method.super_.call(this, "builtin.Runtime", "getRuntime", []);
}
exports.builtin_Server_Object__getRuntime_Method = builtin_Server_Object__getRuntime_Method;
_qrt.util.inherits(builtin_Server_Object__getRuntime_Method, reflect.Method);

function builtin_Server_Object__getRuntime_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Server_Object__getRuntime_Method.prototype.__init_fields__ = builtin_Server_Object__getRuntime_Method__init_fields__;

function builtin_Server_Object__getRuntime_Method_invoke(object, args) {
    var obj = object;
    return (obj).getRuntime();
}
builtin_Server_Object__getRuntime_Method.prototype.invoke = builtin_Server_Object__getRuntime_Method_invoke;

function builtin_Server_Object__getRuntime_Method__getClass() {
    return null;
}
builtin_Server_Object__getRuntime_Method.prototype._getClass = builtin_Server_Object__getRuntime_Method__getClass;

function builtin_Server_Object__getRuntime_Method__getField(name) {
    return null;
}
builtin_Server_Object__getRuntime_Method.prototype._getField = builtin_Server_Object__getRuntime_Method__getField;

function builtin_Server_Object__getRuntime_Method__setField(name, value) {}
builtin_Server_Object__getRuntime_Method.prototype._setField = builtin_Server_Object__getRuntime_Method__setField;

// CLASS builtin_Server_Object__onHTTPRequest_Method

function builtin_Server_Object__onHTTPRequest_Method() {
    builtin_Server_Object__onHTTPRequest_Method.super_.call(this, "builtin.void", "onHTTPRequest", ["builtin.HTTPRequest", "builtin.HTTPResponse"]);
}
exports.builtin_Server_Object__onHTTPRequest_Method = builtin_Server_Object__onHTTPRequest_Method;
_qrt.util.inherits(builtin_Server_Object__onHTTPRequest_Method, reflect.Method);

function builtin_Server_Object__onHTTPRequest_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Server_Object__onHTTPRequest_Method.prototype.__init_fields__ = builtin_Server_Object__onHTTPRequest_Method__init_fields__;

function builtin_Server_Object__onHTTPRequest_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPRequest((args)[0], (args)[1]);
    return null;
}
builtin_Server_Object__onHTTPRequest_Method.prototype.invoke = builtin_Server_Object__onHTTPRequest_Method_invoke;

function builtin_Server_Object__onHTTPRequest_Method__getClass() {
    return null;
}
builtin_Server_Object__onHTTPRequest_Method.prototype._getClass = builtin_Server_Object__onHTTPRequest_Method__getClass;

function builtin_Server_Object__onHTTPRequest_Method__getField(name) {
    return null;
}
builtin_Server_Object__onHTTPRequest_Method.prototype._getField = builtin_Server_Object__onHTTPRequest_Method__getField;

function builtin_Server_Object__onHTTPRequest_Method__setField(name, value) {}
builtin_Server_Object__onHTTPRequest_Method.prototype._setField = builtin_Server_Object__onHTTPRequest_Method__setField;

// CLASS builtin_Server_Object__onServletError_Method

function builtin_Server_Object__onServletError_Method() {
    builtin_Server_Object__onServletError_Method.super_.call(this, "builtin.void", "onServletError", ["builtin.String", "builtin.String"]);
}
exports.builtin_Server_Object__onServletError_Method = builtin_Server_Object__onServletError_Method;
_qrt.util.inherits(builtin_Server_Object__onServletError_Method, reflect.Method);

function builtin_Server_Object__onServletError_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
builtin_Server_Object__onServletError_Method.prototype.__init_fields__ = builtin_Server_Object__onServletError_Method__init_fields__;

function builtin_Server_Object__onServletError_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletError((args)[0], (args)[1]);
    return null;
}
builtin_Server_Object__onServletError_Method.prototype.invoke = builtin_Server_Object__onServletError_Method_invoke;

function builtin_Server_Object__onServletError_Method__getClass() {
    return null;
}
builtin_Server_Object__onServletError_Method.prototype._getClass = builtin_Server_Object__onServletError_Method__getClass;

function builtin_Server_Object__onServletError_Method__getField(name) {
    return null;
}
builtin_Server_Object__onServletError_Method.prototype._getField = builtin_Server_Object__onServletError_Method__getField;

function builtin_Server_Object__onServletError_Method__setField(name, value) {}
builtin_Server_Object__onServletError_Method.prototype._setField = builtin_Server_Object__onServletError_Method__setField;

// CLASS builtin_Server_Object_

function builtin_Server_Object_() {
    builtin_Server_Object_.super_.call(this, "builtin.Server<Object>");
    (this).name = "Server";
    (this).parameters = ["Object"];
    (this).fields = [new reflect.Field("builtin.Runtime", "runtime"), new reflect.Field("Object", "impl")];
    (this).methods = [new builtin_Server_Object__getRuntime_Method(), new builtin_Server_Object__onHTTPRequest_Method(), new builtin_Server_Object__onServletError_Method()];
}
exports.builtin_Server_Object_ = builtin_Server_Object_;
_qrt.util.inherits(builtin_Server_Object_, reflect.Class);

function builtin_Server_Object___init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
builtin_Server_Object_.prototype.__init_fields__ = builtin_Server_Object___init_fields__;
builtin_Server_Object_.singleton = new builtin_Server_Object_();
function builtin_Server_Object__construct(args) {
    return new builtin.Server((args)[0], (args)[1]);
}
builtin_Server_Object_.prototype.construct = builtin_Server_Object__construct;

function builtin_Server_Object___getClass() {
    return null;
}
builtin_Server_Object_.prototype._getClass = builtin_Server_Object___getClass;

function builtin_Server_Object___getField(name) {
    return null;
}
builtin_Server_Object_.prototype._getField = builtin_Server_Object___getField;

function builtin_Server_Object___setField(name, value) {}
builtin_Server_Object_.prototype._setField = builtin_Server_Object___setField;


// CLASS reflect_Class

function reflect_Class() {
    reflect_Class.super_.call(this, "reflect.Class");
    (this).name = "Class";
    (this).parameters = [];
    (this).fields = [new reflect.Field("builtin.Map<builtin.String,reflect.Class>", "classes"), new reflect.Field("reflect.Class", "VOID"), new reflect.Field("reflect.Class", "BOOL"), new reflect.Field("reflect.Class", "INT"), new reflect.Field("reflect.Class", "LONG"), new reflect.Field("reflect.Class", "STRING"), new reflect.Field("builtin.String", "id"), new reflect.Field("builtin.String", "name"), new reflect.Field("builtin.List<reflect.Class>", "parameters"), new reflect.Field("builtin.List<reflect.Field>", "fields"), new reflect.Field("builtin.List<reflect.Method>", "methods")];
    (this).methods = [];
}
exports.reflect_Class = reflect_Class;
_qrt.util.inherits(reflect_Class, reflect.Class);

function reflect_Class__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
reflect_Class.prototype.__init_fields__ = reflect_Class__init_fields__;
reflect_Class.singleton = new reflect_Class();
function reflect_Class_construct(args) {
    return new reflect.Class((args)[0]);
}
reflect_Class.prototype.construct = reflect_Class_construct;

function reflect_Class__getClass() {
    return null;
}
reflect_Class.prototype._getClass = reflect_Class__getClass;

function reflect_Class__getField(name) {
    return null;
}
reflect_Class.prototype._getField = reflect_Class__getField;

function reflect_Class__setField(name, value) {}
reflect_Class.prototype._setField = reflect_Class__setField;


// CLASS reflect_Field

function reflect_Field() {
    reflect_Field.super_.call(this, "reflect.Field");
    (this).name = "Field";
    (this).parameters = [];
    (this).fields = [new reflect.Field("builtin.String", "type"), new reflect.Field("builtin.String", "name")];
    (this).methods = [];
}
exports.reflect_Field = reflect_Field;
_qrt.util.inherits(reflect_Field, reflect.Class);

function reflect_Field__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
reflect_Field.prototype.__init_fields__ = reflect_Field__init_fields__;
reflect_Field.singleton = new reflect_Field();
function reflect_Field_construct(args) {
    return new reflect.Field((args)[0], (args)[1]);
}
reflect_Field.prototype.construct = reflect_Field_construct;

function reflect_Field__getClass() {
    return null;
}
reflect_Field.prototype._getClass = reflect_Field__getClass;

function reflect_Field__getField(name) {
    return null;
}
reflect_Field.prototype._getField = reflect_Field__getField;

function reflect_Field__setField(name, value) {}
reflect_Field.prototype._setField = reflect_Field__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.test1_Test_md = test1_Test.singleton;
Root.test2_Test_md = test2_Test.singleton;
Root.builtin_ResponseHolder_md = builtin_ResponseHolder.singleton;
Root.builtin_Service_md = builtin_Service.singleton;
Root.builtin_Client_md = builtin_Client.singleton;
Root.builtin_Server_Object__md = builtin_Server_Object_.singleton;
function Root__getClass() {
    return null;
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var test1 = require('../test1');
exports.test1 = test1;
var test2 = require('../test2');
exports.test2 = test2;
var test3 = require('../test3');
exports.test3 = test3;
var builtin = require('builtin').builtin;
exports.builtin = builtin;
