var _qrt = require("datawire-quark-core");
var reflect = require('builtin').reflect;
exports.reflect = reflect;



// CLASS pets_Cat_greet_Method

function pets_Cat_greet_Method() {
    pets_Cat_greet_Method.super_.call(this, "builtin.void", "greet", []);
}
exports.pets_Cat_greet_Method = pets_Cat_greet_Method;
_qrt.util.inherits(pets_Cat_greet_Method, reflect.Method);

function pets_Cat_greet_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pets_Cat_greet_Method.prototype.__init_fields__ = pets_Cat_greet_Method__init_fields__;

function pets_Cat_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
pets_Cat_greet_Method.prototype.invoke = pets_Cat_greet_Method_invoke;

function pets_Cat_greet_Method__getClass() {
    return null;
}
pets_Cat_greet_Method.prototype._getClass = pets_Cat_greet_Method__getClass;

function pets_Cat_greet_Method__getField(name) {
    return null;
}
pets_Cat_greet_Method.prototype._getField = pets_Cat_greet_Method__getField;

function pets_Cat_greet_Method__setField(name, value) {}
pets_Cat_greet_Method.prototype._setField = pets_Cat_greet_Method__setField;

// CLASS pets_Cat

function pets_Cat() {
    pets_Cat.super_.call(this, "pets.Cat");
    (this).name = "Cat";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pets_Cat_greet_Method()];
}
exports.pets_Cat = pets_Cat;
_qrt.util.inherits(pets_Cat, reflect.Class);

function pets_Cat__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pets_Cat.prototype.__init_fields__ = pets_Cat__init_fields__;
pets_Cat.singleton = new pets_Cat();
function pets_Cat_construct(args) {
    return new pets.Cat();
}
pets_Cat.prototype.construct = pets_Cat_construct;

function pets_Cat__getClass() {
    return null;
}
pets_Cat.prototype._getClass = pets_Cat__getClass;

function pets_Cat__getField(name) {
    return null;
}
pets_Cat.prototype._getField = pets_Cat__getField;

function pets_Cat__setField(name, value) {}
pets_Cat.prototype._setField = pets_Cat__setField;


// CLASS pets_Dog_greet_Method

function pets_Dog_greet_Method() {
    pets_Dog_greet_Method.super_.call(this, "builtin.void", "greet", []);
}
exports.pets_Dog_greet_Method = pets_Dog_greet_Method;
_qrt.util.inherits(pets_Dog_greet_Method, reflect.Method);

function pets_Dog_greet_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pets_Dog_greet_Method.prototype.__init_fields__ = pets_Dog_greet_Method__init_fields__;

function pets_Dog_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
pets_Dog_greet_Method.prototype.invoke = pets_Dog_greet_Method_invoke;

function pets_Dog_greet_Method__getClass() {
    return null;
}
pets_Dog_greet_Method.prototype._getClass = pets_Dog_greet_Method__getClass;

function pets_Dog_greet_Method__getField(name) {
    return null;
}
pets_Dog_greet_Method.prototype._getField = pets_Dog_greet_Method__getField;

function pets_Dog_greet_Method__setField(name, value) {}
pets_Dog_greet_Method.prototype._setField = pets_Dog_greet_Method__setField;

// CLASS pets_Dog

function pets_Dog() {
    pets_Dog.super_.call(this, "pets.Dog");
    (this).name = "Dog";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pets_Dog_greet_Method()];
}
exports.pets_Dog = pets_Dog;
_qrt.util.inherits(pets_Dog, reflect.Class);

function pets_Dog__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pets_Dog.prototype.__init_fields__ = pets_Dog__init_fields__;
pets_Dog.singleton = new pets_Dog();
function pets_Dog_construct(args) {
    return new pets.Dog();
}
pets_Dog.prototype.construct = pets_Dog_construct;

function pets_Dog__getClass() {
    return null;
}
pets_Dog.prototype._getClass = pets_Dog__getClass;

function pets_Dog__getField(name) {
    return null;
}
pets_Dog.prototype._getField = pets_Dog__getField;

function pets_Dog__setField(name, value) {}
pets_Dog.prototype._setField = pets_Dog__setField;


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
Root.pets_Cat_md = pets_Cat.singleton;
Root.pets_Dog_md = pets_Dog.singleton;
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

var pets = require('../pets');
exports.pets = pets;
var builtin = require('builtin').builtin;
exports.builtin = builtin;
