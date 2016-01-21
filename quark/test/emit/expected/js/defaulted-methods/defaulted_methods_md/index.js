var _qrt = require("datawire-quark-core");
var reflect = require('builtin').reflect;
exports.reflect = reflect;



// CLASS pkg_A_foo_Method

function pkg_A_foo_Method() {
    pkg_A_foo_Method.super_.call(this, "builtin.void", "foo", []);
}
exports.pkg_A_foo_Method = pkg_A_foo_Method;
_qrt.util.inherits(pkg_A_foo_Method, reflect.Method);

function pkg_A_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_A_foo_Method.prototype.__init_fields__ = pkg_A_foo_Method__init_fields__;

function pkg_A_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_A_foo_Method.prototype.invoke = pkg_A_foo_Method_invoke;

function pkg_A_foo_Method__getClass() {
    return null;
}
pkg_A_foo_Method.prototype._getClass = pkg_A_foo_Method__getClass;

function pkg_A_foo_Method__getField(name) {
    return null;
}
pkg_A_foo_Method.prototype._getField = pkg_A_foo_Method__getField;

function pkg_A_foo_Method__setField(name, value) {}
pkg_A_foo_Method.prototype._setField = pkg_A_foo_Method__setField;

// CLASS pkg_A_bar_Method

function pkg_A_bar_Method() {
    pkg_A_bar_Method.super_.call(this, "builtin.void", "bar", []);
}
exports.pkg_A_bar_Method = pkg_A_bar_Method;
_qrt.util.inherits(pkg_A_bar_Method, reflect.Method);

function pkg_A_bar_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_A_bar_Method.prototype.__init_fields__ = pkg_A_bar_Method__init_fields__;

function pkg_A_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_A_bar_Method.prototype.invoke = pkg_A_bar_Method_invoke;

function pkg_A_bar_Method__getClass() {
    return null;
}
pkg_A_bar_Method.prototype._getClass = pkg_A_bar_Method__getClass;

function pkg_A_bar_Method__getField(name) {
    return null;
}
pkg_A_bar_Method.prototype._getField = pkg_A_bar_Method__getField;

function pkg_A_bar_Method__setField(name, value) {}
pkg_A_bar_Method.prototype._setField = pkg_A_bar_Method__setField;

// CLASS pkg_A

function pkg_A() {
    pkg_A.super_.call(this, "pkg.A");
    (this).name = "A";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_A_foo_Method(), new pkg_A_bar_Method()];
}
exports.pkg_A = pkg_A;
_qrt.util.inherits(pkg_A, reflect.Class);

function pkg_A__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_A.prototype.__init_fields__ = pkg_A__init_fields__;
pkg_A.singleton = new pkg_A();
function pkg_A_construct(args) {
    return null;
}
pkg_A.prototype.construct = pkg_A_construct;

function pkg_A__getClass() {
    return null;
}
pkg_A.prototype._getClass = pkg_A__getClass;

function pkg_A__getField(name) {
    return null;
}
pkg_A.prototype._getField = pkg_A__getField;

function pkg_A__setField(name, value) {}
pkg_A.prototype._setField = pkg_A__setField;


// CLASS pkg_B_bar_Method

function pkg_B_bar_Method() {
    pkg_B_bar_Method.super_.call(this, "builtin.void", "bar", []);
}
exports.pkg_B_bar_Method = pkg_B_bar_Method;
_qrt.util.inherits(pkg_B_bar_Method, reflect.Method);

function pkg_B_bar_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_B_bar_Method.prototype.__init_fields__ = pkg_B_bar_Method__init_fields__;

function pkg_B_bar_Method_invoke(object, args) {
    var obj = object;
    (obj).bar();
    return null;
}
pkg_B_bar_Method.prototype.invoke = pkg_B_bar_Method_invoke;

function pkg_B_bar_Method__getClass() {
    return null;
}
pkg_B_bar_Method.prototype._getClass = pkg_B_bar_Method__getClass;

function pkg_B_bar_Method__getField(name) {
    return null;
}
pkg_B_bar_Method.prototype._getField = pkg_B_bar_Method__getField;

function pkg_B_bar_Method__setField(name, value) {}
pkg_B_bar_Method.prototype._setField = pkg_B_bar_Method__setField;

// CLASS pkg_B

function pkg_B() {
    pkg_B.super_.call(this, "pkg.B");
    (this).name = "B";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_B_bar_Method()];
}
exports.pkg_B = pkg_B;
_qrt.util.inherits(pkg_B, reflect.Class);

function pkg_B__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_B.prototype.__init_fields__ = pkg_B__init_fields__;
pkg_B.singleton = new pkg_B();
function pkg_B_construct(args) {
    return null;
}
pkg_B.prototype.construct = pkg_B_construct;

function pkg_B__getClass() {
    return null;
}
pkg_B.prototype._getClass = pkg_B__getClass;

function pkg_B__getField(name) {
    return null;
}
pkg_B.prototype._getField = pkg_B__getField;

function pkg_B__setField(name, value) {}
pkg_B.prototype._setField = pkg_B__setField;


// CLASS pkg_C_foo_Method

function pkg_C_foo_Method() {
    pkg_C_foo_Method.super_.call(this, "builtin.void", "foo", []);
}
exports.pkg_C_foo_Method = pkg_C_foo_Method;
_qrt.util.inherits(pkg_C_foo_Method, reflect.Method);

function pkg_C_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_C_foo_Method.prototype.__init_fields__ = pkg_C_foo_Method__init_fields__;

function pkg_C_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_C_foo_Method.prototype.invoke = pkg_C_foo_Method_invoke;

function pkg_C_foo_Method__getClass() {
    return null;
}
pkg_C_foo_Method.prototype._getClass = pkg_C_foo_Method__getClass;

function pkg_C_foo_Method__getField(name) {
    return null;
}
pkg_C_foo_Method.prototype._getField = pkg_C_foo_Method__getField;

function pkg_C_foo_Method__setField(name, value) {}
pkg_C_foo_Method.prototype._setField = pkg_C_foo_Method__setField;

// CLASS pkg_C

function pkg_C() {
    pkg_C.super_.call(this, "pkg.C");
    (this).name = "C";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_C_foo_Method()];
}
exports.pkg_C = pkg_C;
_qrt.util.inherits(pkg_C, reflect.Class);

function pkg_C__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_C.prototype.__init_fields__ = pkg_C__init_fields__;
pkg_C.singleton = new pkg_C();
function pkg_C_construct(args) {
    return null;
}
pkg_C.prototype.construct = pkg_C_construct;

function pkg_C__getClass() {
    return null;
}
pkg_C.prototype._getClass = pkg_C__getClass;

function pkg_C__getField(name) {
    return null;
}
pkg_C.prototype._getField = pkg_C__getField;

function pkg_C__setField(name, value) {}
pkg_C.prototype._setField = pkg_C__setField;


// CLASS pkg_T1_foo_Method

function pkg_T1_foo_Method() {
    pkg_T1_foo_Method.super_.call(this, "builtin.void", "foo", []);
}
exports.pkg_T1_foo_Method = pkg_T1_foo_Method;
_qrt.util.inherits(pkg_T1_foo_Method, reflect.Method);

function pkg_T1_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T1_foo_Method.prototype.__init_fields__ = pkg_T1_foo_Method__init_fields__;

function pkg_T1_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T1_foo_Method.prototype.invoke = pkg_T1_foo_Method_invoke;

function pkg_T1_foo_Method__getClass() {
    return null;
}
pkg_T1_foo_Method.prototype._getClass = pkg_T1_foo_Method__getClass;

function pkg_T1_foo_Method__getField(name) {
    return null;
}
pkg_T1_foo_Method.prototype._getField = pkg_T1_foo_Method__getField;

function pkg_T1_foo_Method__setField(name, value) {}
pkg_T1_foo_Method.prototype._setField = pkg_T1_foo_Method__setField;

// CLASS pkg_T1

function pkg_T1() {
    pkg_T1.super_.call(this, "pkg.T1");
    (this).name = "T1";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T1_foo_Method()];
}
exports.pkg_T1 = pkg_T1;
_qrt.util.inherits(pkg_T1, reflect.Class);

function pkg_T1__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T1.prototype.__init_fields__ = pkg_T1__init_fields__;
pkg_T1.singleton = new pkg_T1();
function pkg_T1_construct(args) {
    return new pkg.T1();
}
pkg_T1.prototype.construct = pkg_T1_construct;

function pkg_T1__getClass() {
    return null;
}
pkg_T1.prototype._getClass = pkg_T1__getClass;

function pkg_T1__getField(name) {
    return null;
}
pkg_T1.prototype._getField = pkg_T1__getField;

function pkg_T1__setField(name, value) {}
pkg_T1.prototype._setField = pkg_T1__setField;


// CLASS pkg_T2_foo_Method

function pkg_T2_foo_Method() {
    pkg_T2_foo_Method.super_.call(this, "builtin.void", "foo", []);
}
exports.pkg_T2_foo_Method = pkg_T2_foo_Method;
_qrt.util.inherits(pkg_T2_foo_Method, reflect.Method);

function pkg_T2_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T2_foo_Method.prototype.__init_fields__ = pkg_T2_foo_Method__init_fields__;

function pkg_T2_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T2_foo_Method.prototype.invoke = pkg_T2_foo_Method_invoke;

function pkg_T2_foo_Method__getClass() {
    return null;
}
pkg_T2_foo_Method.prototype._getClass = pkg_T2_foo_Method__getClass;

function pkg_T2_foo_Method__getField(name) {
    return null;
}
pkg_T2_foo_Method.prototype._getField = pkg_T2_foo_Method__getField;

function pkg_T2_foo_Method__setField(name, value) {}
pkg_T2_foo_Method.prototype._setField = pkg_T2_foo_Method__setField;

// CLASS pkg_T2

function pkg_T2() {
    pkg_T2.super_.call(this, "pkg.T2");
    (this).name = "T2";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T2_foo_Method()];
}
exports.pkg_T2 = pkg_T2;
_qrt.util.inherits(pkg_T2, reflect.Class);

function pkg_T2__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T2.prototype.__init_fields__ = pkg_T2__init_fields__;
pkg_T2.singleton = new pkg_T2();
function pkg_T2_construct(args) {
    return new pkg.T2();
}
pkg_T2.prototype.construct = pkg_T2_construct;

function pkg_T2__getClass() {
    return null;
}
pkg_T2.prototype._getClass = pkg_T2__getClass;

function pkg_T2__getField(name) {
    return null;
}
pkg_T2.prototype._getField = pkg_T2__getField;

function pkg_T2__setField(name, value) {}
pkg_T2.prototype._setField = pkg_T2__setField;


// CLASS pkg_T3_foo_Method

function pkg_T3_foo_Method() {
    pkg_T3_foo_Method.super_.call(this, "builtin.void", "foo", []);
}
exports.pkg_T3_foo_Method = pkg_T3_foo_Method;
_qrt.util.inherits(pkg_T3_foo_Method, reflect.Method);

function pkg_T3_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T3_foo_Method.prototype.__init_fields__ = pkg_T3_foo_Method__init_fields__;

function pkg_T3_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T3_foo_Method.prototype.invoke = pkg_T3_foo_Method_invoke;

function pkg_T3_foo_Method__getClass() {
    return null;
}
pkg_T3_foo_Method.prototype._getClass = pkg_T3_foo_Method__getClass;

function pkg_T3_foo_Method__getField(name) {
    return null;
}
pkg_T3_foo_Method.prototype._getField = pkg_T3_foo_Method__getField;

function pkg_T3_foo_Method__setField(name, value) {}
pkg_T3_foo_Method.prototype._setField = pkg_T3_foo_Method__setField;

// CLASS pkg_T3

function pkg_T3() {
    pkg_T3.super_.call(this, "pkg.T3");
    (this).name = "T3";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T3_foo_Method()];
}
exports.pkg_T3 = pkg_T3;
_qrt.util.inherits(pkg_T3, reflect.Class);

function pkg_T3__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T3.prototype.__init_fields__ = pkg_T3__init_fields__;
pkg_T3.singleton = new pkg_T3();
function pkg_T3_construct(args) {
    return new pkg.T3();
}
pkg_T3.prototype.construct = pkg_T3_construct;

function pkg_T3__getClass() {
    return null;
}
pkg_T3.prototype._getClass = pkg_T3__getClass;

function pkg_T3__getField(name) {
    return null;
}
pkg_T3.prototype._getField = pkg_T3__getField;

function pkg_T3__setField(name, value) {}
pkg_T3.prototype._setField = pkg_T3__setField;


// CLASS pkg_T4

function pkg_T4() {
    pkg_T4.super_.call(this, "pkg.T4");
    (this).name = "T4";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.pkg_T4 = pkg_T4;
_qrt.util.inherits(pkg_T4, reflect.Class);

function pkg_T4__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T4.prototype.__init_fields__ = pkg_T4__init_fields__;
pkg_T4.singleton = new pkg_T4();
function pkg_T4_construct(args) {
    return new pkg.T4();
}
pkg_T4.prototype.construct = pkg_T4_construct;

function pkg_T4__getClass() {
    return null;
}
pkg_T4.prototype._getClass = pkg_T4__getClass;

function pkg_T4__getField(name) {
    return null;
}
pkg_T4.prototype._getField = pkg_T4__getField;

function pkg_T4__setField(name, value) {}
pkg_T4.prototype._setField = pkg_T4__setField;


// CLASS pkg_T5_foo_Method

function pkg_T5_foo_Method() {
    pkg_T5_foo_Method.super_.call(this, "builtin.void", "foo", []);
}
exports.pkg_T5_foo_Method = pkg_T5_foo_Method;
_qrt.util.inherits(pkg_T5_foo_Method, reflect.Method);

function pkg_T5_foo_Method__init_fields__() {
    reflect.Method.prototype.__init_fields__.call(this);
}
pkg_T5_foo_Method.prototype.__init_fields__ = pkg_T5_foo_Method__init_fields__;

function pkg_T5_foo_Method_invoke(object, args) {
    var obj = object;
    (obj).foo();
    return null;
}
pkg_T5_foo_Method.prototype.invoke = pkg_T5_foo_Method_invoke;

function pkg_T5_foo_Method__getClass() {
    return null;
}
pkg_T5_foo_Method.prototype._getClass = pkg_T5_foo_Method__getClass;

function pkg_T5_foo_Method__getField(name) {
    return null;
}
pkg_T5_foo_Method.prototype._getField = pkg_T5_foo_Method__getField;

function pkg_T5_foo_Method__setField(name, value) {}
pkg_T5_foo_Method.prototype._setField = pkg_T5_foo_Method__setField;

// CLASS pkg_T5

function pkg_T5() {
    pkg_T5.super_.call(this, "pkg.T5");
    (this).name = "T5";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pkg_T5_foo_Method()];
}
exports.pkg_T5 = pkg_T5;
_qrt.util.inherits(pkg_T5, reflect.Class);

function pkg_T5__init_fields__() {
    reflect.Class.prototype.__init_fields__.call(this);
}
pkg_T5.prototype.__init_fields__ = pkg_T5__init_fields__;
pkg_T5.singleton = new pkg_T5();
function pkg_T5_construct(args) {
    return new pkg.T5();
}
pkg_T5.prototype.construct = pkg_T5_construct;

function pkg_T5__getClass() {
    return null;
}
pkg_T5.prototype._getClass = pkg_T5__getClass;

function pkg_T5__getField(name) {
    return null;
}
pkg_T5.prototype._getField = pkg_T5__getField;

function pkg_T5__setField(name, value) {}
pkg_T5.prototype._setField = pkg_T5__setField;


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
Root.pkg_A_md = pkg_A.singleton;
Root.pkg_B_md = pkg_B.singleton;
Root.pkg_C_md = pkg_C.singleton;
Root.pkg_T1_md = pkg_T1.singleton;
Root.pkg_T2_md = pkg_T2.singleton;
Root.pkg_T3_md = pkg_T3.singleton;
Root.pkg_T4_md = pkg_T4.singleton;
Root.pkg_T5_md = pkg_T5.singleton;
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

var pkg = require('../pkg');
exports.pkg = pkg;
var builtin = require('builtin').builtin;
exports.builtin = builtin;
