var _qrt = require("datawire-quark-core");




/* BEGIN_BUILTIN */


// CLASS Class

function Class(id) {
    this.__init_fields__();
    (this).id = id;
    _class(this);
}
exports.Class = Class;

function Class__init_fields__() {
    this.id = null;
    this.name = null;
    this.parameters = null;
}
Class.prototype.__init_fields__ = Class__init_fields__;

function Class_getId() {
    return this.id;
}
Class.prototype.getId = Class_getId;

function Class_getName() {
    return this.name;
}
Class.prototype.getName = Class_getName;

function Class_getParameters() {
    return this.parameters;
}
Class.prototype.getParameters = Class_getParameters;

function Class_construct(args) {
    return _construct(this.getId(), args);
}
Class.prototype.construct = Class_construct;

function Class_getFields() {
    return _fields((this).id);
}
Class.prototype.getFields = Class_getFields;

function Class_getField(name) {
    var fields = this.getFields();
    var idx = 0;
    while ((idx) < ((fields).length)) {
        if ((((fields)[idx]).name) === (name)) {
            return (fields)[idx];
        }
        idx = (idx) + (1);
    }
    return null;
}
Class.prototype.getField = Class_getField;

function Class_invoke(object, method, args) {
    return _invoke((this).id, object, method, args);
}
Class.prototype.invoke = Class_invoke;

function Class__getClass() {
    return "Class";
}
Class.prototype._getClass = Class__getClass;

function Class__getField(name) {
    if ((name) === ("id")) {
        return (this).id;
    }
    if ((name) === ("name")) {
        return (this).name;
    }
    if ((name) === ("parameters")) {
        return (this).parameters;
    }
    return null;
}
Class.prototype._getField = Class__getField;

function Class__setField(name, value) {
    if ((name) === ("id")) {
        (this).id = value;
    }
    if ((name) === ("name")) {
        (this).name = value;
    }
    if ((name) === ("parameters")) {
        (this).parameters = value;
    }
}
Class.prototype._setField = Class__setField;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


// CLASS Field

function Field(type, name) {
    this.__init_fields__();
    (this).type = type;
    (this).name = name;
}
exports.Field = Field;

function Field__init_fields__() {
    this.type = null;
    this.name = null;
}
Field.prototype.__init_fields__ = Field__init_fields__;

function Field__getClass() {
    return "Field";
}
Field.prototype._getClass = Field__getClass;

function Field__getField(name) {
    if ((name) === ("type")) {
        return (this).type;
    }
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
Field.prototype._getField = Field__getField;

function Field__setField(name, value) {
    if ((name) === ("type")) {
        (this).type = value;
    }
    if ((name) === ("name")) {
        (this).name = value;
    }
}
Field.prototype._setField = Field__setField;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


function toJSON(obj) {
    var result = new _qrt.JSONObject();
    if ((obj) === (null)) {
        (result).setNull();
        return result;
    }
    var cls = new Class(_qrt._getClass(obj));
    var idx = 0;
    if (((cls).name) === ("String")) {
        (result).setString(obj);
        return result;
    }
    if (((((((cls).name) === ("byte")) || (((cls).name) === ("short"))) || (((cls).name) === ("int"))) || (((cls).name) === ("long"))) || (((cls).name) === ("float"))) {
        (result).setNumber(obj);
        return result;
    }
    if (((cls).name) === ("List")) {
        (result).setList();
        var list = obj;
        while ((idx) < ((list).length)) {
            (result).setListItem(idx, toJSON((list)[idx]));
            idx = (idx) + (1);
        }
        return result;
    }
    if (((cls).name) === ("Map")) {
        (result).setObject();
        var map = obj;
        return result;
    }
    (result).setObjectItem(("$class"), ((new _qrt.JSONObject()).setString((cls).id)));
    var fields = (cls).getFields();
    while ((idx) < ((fields).length)) {
        (result).setObjectItem((((fields)[idx]).name), (toJSON((obj)._getField(((fields)[idx]).name))));
        idx = (idx) + (1);
    }
    return result;
}
exports.toJSON = toJSON;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


function fromJSON(cls, json) {
    if (((json) === (null)) || ((json).isNull())) {
        return null;
    }
    var idx = 0;
    if (((cls).name) === ("List")) {
        var list = (cls).construct([]);
        while ((idx) < ((json).size())) {
            (list).push(fromJSON(((cls).parameters)[0], (json).getListItem(idx)));
            idx = (idx) + (1);
        }
        return list;
    }
    var fields = (cls).getFields();
    var result = (cls).construct([]);
    while ((idx) < ((fields).length)) {
        var f = (fields)[idx];
        idx = (idx) + (1);
        if ((((f).type).name) === ("String")) {
            var s = ((json).getObjectItem((f).name)).getString();
            (result)._setField(((f).name), (s));
            continue;
        }
        if ((((f).type).name) === ("float")) {
            var flt = ((json).getObjectItem((f).name)).getNumber();
            (result)._setField(((f).name), (flt));
            continue;
        }
        if ((((f).type).name) === ("int")) {
            if (!(((json).getObjectItem((f).name)).isNull())) {
                var i = Math.round(((json).getObjectItem((f).name)).getNumber());
                (result)._setField(((f).name), (i));
            }
            continue;
        }
        if ((((f).type).name) === ("bool")) {
            if (!(((json).getObjectItem((f).name)).isNull())) {
                var b = ((json).getObjectItem((f).name)).getBool();
                (result)._setField(((f).name), (b));
            }
            continue;
        }
        (result)._setField(((f).name), (fromJSON((f).type, (json).getObjectItem((f).name))));
    }
    return result;
}
exports.fromJSON = fromJSON;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


// CLASS ResponseHolder
function ResponseHolder() {
    this.__init_fields__();
}
exports.ResponseHolder = ResponseHolder;

function ResponseHolder__init_fields__() {
    this.response = null;
    this.failure = null;
}
ResponseHolder.prototype.__init_fields__ = ResponseHolder__init_fields__;

function ResponseHolder_onHTTPResponse(request, response) {
    (this).response = response;
}
ResponseHolder.prototype.onHTTPResponse = ResponseHolder_onHTTPResponse;

function ResponseHolder_onHTTPError(request, message) {
    this.failure = message;
}
ResponseHolder.prototype.onHTTPError = ResponseHolder_onHTTPError;

function ResponseHolder__getClass() {
    return "ResponseHolder";
}
ResponseHolder.prototype._getClass = ResponseHolder__getClass;

function ResponseHolder__getField(name) {
    if ((name) === ("response")) {
        return (this).response;
    }
    if ((name) === ("failure")) {
        return (this).failure;
    }
    return null;
}
ResponseHolder.prototype._getField = ResponseHolder__getField;

function ResponseHolder__setField(name, value) {
    if ((name) === ("response")) {
        (this).response = value;
    }
    if ((name) === ("failure")) {
        (this).failure = value;
    }
}
ResponseHolder.prototype._setField = ResponseHolder__setField;

function ResponseHolder_onHTTPInit(request) {}
ResponseHolder.prototype.onHTTPInit = ResponseHolder_onHTTPInit;

function ResponseHolder_onHTTPFinal(request) {}
ResponseHolder.prototype.onHTTPFinal = ResponseHolder_onHTTPFinal;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


// CLASS Service
function Service() {
    this.__init_fields__();
}
exports.Service = Service;

function Service__init_fields__() {}
Service.prototype.__init_fields__ = Service__init_fields__;

function Service_getURL() { /* interface */ }
Service.prototype.getURL = Service_getURL;

function Service_getRuntime() { /* interface */ }
Service.prototype.getRuntime = Service_getRuntime;

function Service_rpc(name, message) {
    var request = new _qrt.HTTPRequest(this.getURL());
    var json = toJSON(message);
    var envelope = new _qrt.JSONObject();
    (envelope).setObjectItem(("$method"), ((new _qrt.JSONObject()).setString(name)));
    (envelope).setObjectItem(("rpc"), (json));
    (request).setBody((envelope).toString());
    (request).setMethod("POST");
    var rt = (this).getRuntime();
    var rh = new ResponseHolder();
    (rt).acquire();
    (rt).request(request, rh);
    while ((((rh).response) === (null)) && (((rh).failure) === (null))) {
        (rt).wait(3.14);
    }
    (rt).release();
    if (((rh).failure) !== (null)) {
        (rt).fail(((("RPC ") + (name)) + ("(...) failed: ")) + ((rh).failure));
        return null;
    }
    var response = (rh).response;
    if (((response).getCode()) !== (200)) {
        (rt).fail(((("RPC ") + (name)) + ("(...) failed: Server returned error ")) + (_qrt.toString((response).getCode())));
        return null;
    }
    var body = (response).getBody();
    var obj = _qrt.json_from_string(body);
    var classname = ((obj).getObjectItem("$class")).getString();
    if ((classname) === (null)) {
        (rt).fail((("RPC ") + (name)) + ("(...) failed: Server returned unrecognizable content"));
        return null;
    } else {
        return fromJSON(new Class(classname), obj);
    }
}
Service.prototype.rpc = Service_rpc;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


// CLASS Client

function Client(runtime, url) {
    this.__init_fields__();
    (this).runtime = runtime;
    (this).url = url;
}
exports.Client = Client;

function Client__init_fields__() {
    this.runtime = null;
    this.url = null;
}
Client.prototype.__init_fields__ = Client__init_fields__;

function Client_getRuntime() {
    return (this).runtime;
}
Client.prototype.getRuntime = Client_getRuntime;

function Client_getURL() {
    return (this).url;
}
Client.prototype.getURL = Client_getURL;

function Client__getClass() {
    return "Client";
}
Client.prototype._getClass = Client__getClass;

function Client__getField(name) {
    if ((name) === ("runtime")) {
        return (this).runtime;
    }
    if ((name) === ("url")) {
        return (this).url;
    }
    return null;
}
Client.prototype._getField = Client__getField;

function Client__setField(name, value) {
    if ((name) === ("runtime")) {
        (this).runtime = value;
    }
    if ((name) === ("url")) {
        (this).url = value;
    }
}
Client.prototype._setField = Client__setField;
/* END_BUILTIN */

/* BEGIN_BUILTIN */


// CLASS Server

function Server(runtime, impl) {
    this.__init_fields__();
    (this).runtime = runtime;
    (this).impl = impl;
}
exports.Server = Server;

function Server__init_fields__() {
    this.runtime = null;
    this.impl = null;
}
Server.prototype.__init_fields__ = Server__init_fields__;

function Server_getRuntime() {
    return (this).runtime;
}
Server.prototype.getRuntime = Server_getRuntime;

function Server_onHTTPRequest(request, response) {
    var envelope = _qrt.json_from_string((request).getBody());
    var method = ((envelope).getObjectItem("$method")).getString();
    var json = (envelope).getObjectItem("rpc");
    var argument = fromJSON(new Class(((json).getObjectItem("$class")).getString()), json);
    var result = (((new Class(_qrt._getClass(this))).getField("impl")).type).invoke(this.impl, method, [argument]);
    (response).setBody((toJSON(result)).toString());
    (response).setCode(200);
    (this.getRuntime()).respond(request, response);
}
Server.prototype.onHTTPRequest = Server_onHTTPRequest;

function Server_onServletError(url, message) {
    _qrt.print(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message));
}
Server.prototype.onServletError = Server_onServletError;

function Server__getClass() {
    return "Server<Object>";
}
Server.prototype._getClass = Server__getClass;

function Server__getField(name) {
    if ((name) === ("runtime")) {
        return (this).runtime;
    }
    if ((name) === ("impl")) {
        return (this).impl;
    }
    return null;
}
Server.prototype._getField = Server__getField;

function Server__setField(name, value) {
    if ((name) === ("runtime")) {
        (this).runtime = value;
    }
    if ((name) === ("impl")) {
        (this).impl = value;
    }
}
Server.prototype._setField = Server__setField;

/**
 * called after the servlet is successfully installed. The url will be the actual url used, important especially if ephemeral port was requested
 */
function Server_onServletInit(url, runtime) {}
Server.prototype.onServletInit = Server_onServletInit;

/**
 * called when the servlet is removed
 */
function Server_onServletEnd(url) {}
Server.prototype.onServletEnd = Server_onServletEnd;
/* END_BUILTIN */



// CLASS A
function A() {
    this.__init_fields__();
}
exports.A = A;

function A__init_fields__() {}
A.prototype.__init_fields__ = A__init_fields__;

function A_foo() { /* interface */ }
A.prototype.foo = A_foo;

function A_bar() {
    _qrt.print("A bar");
    (this).foo();
}
A.prototype.bar = A_bar;

// CLASS B
function B() {
    this.__init_fields__();
}
exports.B = B;

function B__init_fields__() {}
B.prototype.__init_fields__ = B__init_fields__;

function B_bar() {
    _qrt.print("B bar");
}
B.prototype.bar = B_bar;

// CLASS C
function C() {
    this.__init_fields__();
}
exports.C = C;

function C__init_fields__() {}
C.prototype.__init_fields__ = C__init_fields__;

function C_foo() {
    _qrt.print("C mixin for foo");
}
C.prototype.foo = C_foo;

// CLASS T1
function T1() {
    this.__init_fields__();
}
exports.T1 = T1;

function T1__init_fields__() {}
T1.prototype.__init_fields__ = T1__init_fields__;

function T1_foo() {
    _qrt.print("T1 foo");
}
T1.prototype.foo = T1_foo;

function T1__getClass() {
    return "pkg.T1";
}
T1.prototype._getClass = T1__getClass;

function T1__getField(name) {
    return null;
}
T1.prototype._getField = T1__getField;

function T1__setField(name, value) {}
T1.prototype._setField = T1__setField;

function T1_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T1.prototype.bar = T1_bar;

// CLASS T2
function T2() {
    this.__init_fields__();
}
exports.T2 = T2;

function T2__init_fields__() {}
T2.prototype.__init_fields__ = T2__init_fields__;

function T2_foo() {
    _qrt.print("T2 foo");
}
T2.prototype.foo = T2_foo;

function T2__getClass() {
    return "pkg.T2";
}
T2.prototype._getClass = T2__getClass;

function T2__getField(name) {
    return null;
}
T2.prototype._getField = T2__getField;

function T2__setField(name, value) {}
T2.prototype._setField = T2__setField;

function T2_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T2.prototype.bar = T2_bar;

// CLASS T3
function T3() {
    this.__init_fields__();
}
exports.T3 = T3;

function T3__init_fields__() {}
T3.prototype.__init_fields__ = T3__init_fields__;

function T3_foo() {
    _qrt.print("T3 foo");
}
T3.prototype.foo = T3_foo;

function T3__getClass() {
    return "pkg.T3";
}
T3.prototype._getClass = T3__getClass;

function T3__getField(name) {
    return null;
}
T3.prototype._getField = T3__getField;

function T3__setField(name, value) {}
T3.prototype._setField = T3__setField;

function T3_bar() {
    _qrt.print("B bar");
}
T3.prototype.bar = T3_bar;

// CLASS T4
function T4() {
    this.__init_fields__();
}
exports.T4 = T4;

function T4__init_fields__() {}
T4.prototype.__init_fields__ = T4__init_fields__;

function T4__getClass() {
    return "pkg.T4";
}
T4.prototype._getClass = T4__getClass;

function T4__getField(name) {
    return null;
}
T4.prototype._getField = T4__getField;

function T4__setField(name, value) {}
T4.prototype._setField = T4__setField;

function T4_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T4.prototype.bar = T4_bar;

function T4_foo() {
    _qrt.print("C mixin for foo");
}
T4.prototype.foo = T4_foo;

// CLASS T5
function T5() {
    this.__init_fields__();
}
exports.T5 = T5;

function T5__init_fields__() {}
T5.prototype.__init_fields__ = T5__init_fields__;

function T5_foo() {
    _qrt.print("T5 foo");
}
T5.prototype.foo = T5_foo;

function T5__getClass() {
    return "pkg.T5";
}
T5.prototype._getClass = T5__getClass;

function T5__getField(name) {
    return null;
}
T5.prototype._getField = T5__getField;

function T5__setField(name, value) {}
T5.prototype._setField = T5__setField;

function T5_bar() {
    _qrt.print("A bar");
    (this).foo();
}
T5.prototype.bar = T5_bar;

function main() {
    var t1 = new T1();
    (t1).foo();
    (t1).bar();
    _qrt.print("===");
    var t2 = new T2();
    (t2).foo();
    (t2).bar();
    _qrt.print("===");
    var t3 = new T3();
    (t3).foo();
    (t3).bar();
    _qrt.print("===");
    var t4 = new T4();
    (t4).foo();
    (t4).bar();
    _qrt.print("===");
    var t5 = new T5();
    (t5).foo();
    (t5).bar();
}
exports.main = main;

function _construct(className, args) {
    if ((className) === ("Class")) {
        return new Class((args)[0]);
    }
    if ((className) === ("Field")) {
        return new Field((args)[0], (args)[1]);
    }
    if ((className) === ("List<Object>")) {
        return new Array();
    }
    if ((className) === ("List<Field>")) {
        return new Array();
    }
    if ((className) === ("List<Class>")) {
        return new Array();
    }
    if ((className) === ("List<String>")) {
        return new Array();
    }
    if ((className) === ("Map<Object,Object>")) {
        return new Map();
    }
    if ((className) === ("Map<String,Object>")) {
        return new Map();
    }
    if ((className) === ("ResponseHolder")) {
        return new ResponseHolder();
    }
    if ((className) === ("Client")) {
        return new Client((args)[0], (args)[1]);
    }
    if ((className) === ("Server<Object>")) {
        return new Server((args)[0], (args)[1]);
    }
    if ((className) === ("pkg.T1")) {
        return new T1();
    }
    if ((className) === ("pkg.T2")) {
        return new T2();
    }
    if ((className) === ("pkg.T3")) {
        return new T3();
    }
    if ((className) === ("pkg.T4")) {
        return new T4();
    }
    if ((className) === ("pkg.T5")) {
        return new T5();
    }
    return null;
}
exports._construct = _construct;

function _fields(className) {
    if ((className) === ("Class")) {
        return [new Field(new Class("String"), "id"), new Field(new Class("String"), "name"), new Field(new Class("List<Class>"), "parameters")];
    }
    if ((className) === ("Field")) {
        return [new Field(new Class("Class"), "type"), new Field(new Class("String"), "name")];
    }
    if ((className) === ("List<Object>")) {
        return [];
    }
    if ((className) === ("List<Field>")) {
        return [];
    }
    if ((className) === ("List<Class>")) {
        return [];
    }
    if ((className) === ("List<String>")) {
        return [];
    }
    if ((className) === ("Map<Object,Object>")) {
        return [];
    }
    if ((className) === ("Map<String,Object>")) {
        return [];
    }
    if ((className) === ("ResponseHolder")) {
        return [new Field(new Class("HTTPResponse"), "response"), new Field(new Class("String"), "failure")];
    }
    if ((className) === ("Client")) {
        return [new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "url")];
    }
    if ((className) === ("Server<Object>")) {
        return [new Field(new Class("Runtime"), "runtime"), new Field(new Class("Object"), "impl")];
    }
    if ((className) === ("pkg.T1")) {
        return [];
    }
    if ((className) === ("pkg.T2")) {
        return [];
    }
    if ((className) === ("pkg.T3")) {
        return [];
    }
    if ((className) === ("pkg.T4")) {
        return [];
    }
    if ((className) === ("pkg.T5")) {
        return [];
    }
    return null;
}
exports._fields = _fields;

function _class(cls) {
    if (((cls).id) === ("Class")) {
        (cls).name = "Class";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("Field")) {
        (cls).name = "Field";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("List<Object>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("Object")];
        return;
    }
    if (((cls).id) === ("List<Field>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("Field")];
        return;
    }
    if (((cls).id) === ("List<Class>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("Class")];
        return;
    }
    if (((cls).id) === ("List<String>")) {
        (cls).name = "List";
        (cls).parameters = [new Class("String")];
        return;
    }
    if (((cls).id) === ("Map<Object,Object>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("Object"), new Class("Object")];
        return;
    }
    if (((cls).id) === ("Map<String,Object>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("String"), new Class("Object")];
        return;
    }
    if (((cls).id) === ("ResponseHolder")) {
        (cls).name = "ResponseHolder";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("Service")) {
        (cls).name = "Service";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("Client")) {
        (cls).name = "Client";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("Server<Object>")) {
        (cls).name = "Server";
        (cls).parameters = [new Class("Object")];
        return;
    }
    if (((cls).id) === ("pkg.A")) {
        (cls).name = "pkg.A";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.B")) {
        (cls).name = "pkg.B";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.C")) {
        (cls).name = "pkg.C";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T1")) {
        (cls).name = "pkg.T1";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T2")) {
        (cls).name = "pkg.T2";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T3")) {
        (cls).name = "pkg.T3";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T4")) {
        (cls).name = "pkg.T4";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("pkg.T5")) {
        (cls).name = "pkg.T5";
        (cls).parameters = [];
        return;
    }
    (cls).name = (cls).id;
}
exports._class = _class;

function _invoke(className, object, method, args) {
    if ((className) === ("Class")) {
        if ((method) === ("getId")) {
            var tmp_0 = object;
            return (tmp_0).getId();
        }
        if ((method) === ("getName")) {
            var tmp_1 = object;
            return (tmp_1).getName();
        }
        if ((method) === ("getParameters")) {
            var tmp_2 = object;
            return (tmp_2).getParameters();
        }
        if ((method) === ("construct")) {
            var tmp_3 = object;
            return (tmp_3).construct((args)[0]);
        }
        if ((method) === ("getFields")) {
            var tmp_4 = object;
            return (tmp_4).getFields();
        }
        if ((method) === ("getField")) {
            var tmp_5 = object;
            return (tmp_5).getField((args)[0]);
        }
        if ((method) === ("invoke")) {
            var tmp_6 = object;
            return (tmp_6).invoke((args)[0], (args)[1], (args)[2]);
        }
    }
    if ((className) === ("Field")) {}
    if ((className) === ("List<Object>")) {}
    if ((className) === ("List<Field>")) {}
    if ((className) === ("List<Class>")) {}
    if ((className) === ("List<String>")) {}
    if ((className) === ("Map<Object,Object>")) {}
    if ((className) === ("Map<String,Object>")) {}
    if ((className) === ("ResponseHolder")) {
        if ((method) === ("onHTTPResponse")) {
            var tmp_7 = object;
            (tmp_7).onHTTPResponse((args)[0], (args)[1]);
            return null;
        }
        if ((method) === ("onHTTPError")) {
            var tmp_8 = object;
            (tmp_8).onHTTPError((args)[0], (args)[1]);
            return null;
        }
    }
    if ((className) === ("Service")) {
        if ((method) === ("getURL")) {
            var tmp_9 = object;
            return (tmp_9).getURL();
        }
        if ((method) === ("getRuntime")) {
            var tmp_10 = object;
            return (tmp_10).getRuntime();
        }
        if ((method) === ("rpc")) {
            var tmp_11 = object;
            return (tmp_11).rpc((args)[0], (args)[1]);
        }
    }
    if ((className) === ("Client")) {
        if ((method) === ("getRuntime")) {
            var tmp_12 = object;
            return (tmp_12).getRuntime();
        }
        if ((method) === ("getURL")) {
            var tmp_13 = object;
            return (tmp_13).getURL();
        }
    }
    if ((className) === ("Server<Object>")) {
        if ((method) === ("getRuntime")) {
            var tmp_14 = object;
            return (tmp_14).getRuntime();
        }
        if ((method) === ("onHTTPRequest")) {
            var tmp_15 = object;
            (tmp_15).onHTTPRequest((args)[0], (args)[1]);
            return null;
        }
        if ((method) === ("onServletError")) {
            var tmp_16 = object;
            (tmp_16).onServletError((args)[0], (args)[1]);
            return null;
        }
    }
    if ((className) === ("pkg.A")) {
        if ((method) === ("foo")) {
            var tmp_17 = object;
            (tmp_17).foo();
            return null;
        }
        if ((method) === ("bar")) {
            var tmp_18 = object;
            (tmp_18).bar();
            return null;
        }
    }
    if ((className) === ("pkg.B")) {
        if ((method) === ("bar")) {
            var tmp_19 = object;
            (tmp_19).bar();
            return null;
        }
    }
    if ((className) === ("pkg.C")) {
        if ((method) === ("foo")) {
            var tmp_20 = object;
            (tmp_20).foo();
            return null;
        }
    }
    if ((className) === ("pkg.T1")) {
        if ((method) === ("foo")) {
            var tmp_21 = object;
            (tmp_21).foo();
            return null;
        }
    }
    if ((className) === ("pkg.T2")) {
        if ((method) === ("foo")) {
            var tmp_22 = object;
            (tmp_22).foo();
            return null;
        }
    }
    if ((className) === ("pkg.T3")) {
        if ((method) === ("foo")) {
            var tmp_23 = object;
            (tmp_23).foo();
            return null;
        }
    }
    if ((className) === ("pkg.T4")) {}
    if ((className) === ("pkg.T5")) {
        if ((method) === ("foo")) {
            var tmp_24 = object;
            (tmp_24).foo();
            return null;
        }
    }
    return null;
}
exports._invoke = _invoke;
