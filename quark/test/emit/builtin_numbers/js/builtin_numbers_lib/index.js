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

function Service_getTimeout() { /* interface */ }
Service.prototype.getTimeout = Service_getTimeout;

function Service_rpc(name, message, options) {
    var request = new _qrt.HTTPRequest(this.getURL());
    var json = toJSON(message);
    var envelope = new _qrt.JSONObject();
    (envelope).setObjectItem(("$method"), ((new _qrt.JSONObject()).setString(name)));
    (envelope).setObjectItem(("rpc"), (json));
    (request).setBody((envelope).toString());
    (request).setMethod("POST");
    var rt = (this).getRuntime();
    var timeout = this.getTimeout();
    if (((options).length) > (0)) {
        var map = (options)[0];
        var override = _qrt.map_get((map), ("timeout"));
        if ((override) !== (null)) {
            timeout = (override);
        }
    }
    var rh = new ResponseHolder();
    (rt).acquire();
    var start = Date.now();
    var deadline = (start) + (timeout);
    (rt).request(request, rh);
    while (true) {
        var remaining = (deadline) - (Date.now());
        if ((((rh).response) === (null)) && (((rh).failure) === (null))) {
            if (((timeout) !== (0)) && ((remaining) <= ((0)))) {
                break;
            }
        } else {
            break;
        }
        if ((timeout) === (0)) {
            (rt).wait(3.14);
        } else {
            var r = (remaining);
            (rt).wait((r) / (1000.0));
        }
    }
    (rt).release();
    if (((rh).failure) !== (null)) {
        (rt).fail(((("RPC ") + (name)) + ("(...) failed: ")) + ((rh).failure));
        return null;
    }
    if (((rh).response) === (null)) {
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
    (this).timeout = (0);
}
exports.Client = Client;

function Client__init_fields__() {
    this.runtime = null;
    this.url = null;
    this.timeout = null;
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

function Client_getTimeout() {
    return (this).timeout;
}
Client.prototype.getTimeout = Client_getTimeout;

function Client_setTimeout(timeout) {
    (this).timeout = timeout;
}
Client.prototype.setTimeout = Client_setTimeout;

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
    if ((name) === ("timeout")) {
        return (this).timeout;
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
    if ((name) === ("timeout")) {
        (this).timeout = value;
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
    var body = (request).getBody();
    var envelope = _qrt.json_from_string(body);
    if (((((envelope).getObjectItem("$method")) === ((envelope).undefined())) || (((envelope).getObjectItem("rpc")) === ((envelope).undefined()))) || ((((envelope).getObjectItem("rpc")).getObjectItem("$class")) === (((envelope).getObjectItem("rpc")).undefined()))) {
        (response).setBody((("Failed to understand request.\n\n") + (body)) + ("\n"));
        (response).setCode(400);
    } else {
        var method = ((envelope).getObjectItem("$method")).getString();
        var json = (envelope).getObjectItem("rpc");
        var argument = fromJSON(new Class(((json).getObjectItem("$class")).getString()), json);
        var result = (((new Class(_qrt._getClass(this))).getField("impl")).type).invoke(this.impl, method, [argument]);
        (response).setBody((toJSON(result)).toString());
        (response).setCode(200);
    }
    (this.getRuntime()).respond(request, response);
}
Server.prototype.onHTTPRequest = Server_onHTTPRequest;

function Server_onServletError(url, message) {
    (this.getRuntime()).fail(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message));
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


// CLASS TestByte
function TestByte() {
    this.__init_fields__();
}
exports.TestByte = TestByte;

function TestByte__init_fields__() {}
TestByte.prototype.__init_fields__ = TestByte__init_fields__;

function TestByte_run() {
    var map = new Map();
    var b = 3;
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestByte.prototype.run = TestByte_run;

function TestByte_func() {
    return new Number();
}
TestByte.prototype.func = TestByte_func;

function TestByte__getClass() {
    return "TestByte";
}
TestByte.prototype._getClass = TestByte__getClass;

function TestByte__getField(name) {
    return null;
}
TestByte.prototype._getField = TestByte__getField;

function TestByte__setField(name, value) {}
TestByte.prototype._setField = TestByte__setField;

// CLASS TestShort
function TestShort() {
    this.__init_fields__();
}
exports.TestShort = TestShort;

function TestShort__init_fields__() {}
TestShort.prototype.__init_fields__ = TestShort__init_fields__;

function TestShort_run() {
    var map = new Map();
    var b = 3;
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestShort.prototype.run = TestShort_run;

function TestShort_func() {
    return new Number();
}
TestShort.prototype.func = TestShort_func;

function TestShort__getClass() {
    return "TestShort";
}
TestShort.prototype._getClass = TestShort__getClass;

function TestShort__getField(name) {
    return null;
}
TestShort.prototype._getField = TestShort__getField;

function TestShort__setField(name, value) {}
TestShort.prototype._setField = TestShort__setField;

// CLASS TestInt
function TestInt() {
    this.__init_fields__();
}
exports.TestInt = TestInt;

function TestInt__init_fields__() {}
TestInt.prototype.__init_fields__ = TestInt__init_fields__;

function TestInt_run() {
    var map = new Map();
    var b = 3;
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestInt.prototype.run = TestInt_run;

function TestInt_func() {
    return new Number();
}
TestInt.prototype.func = TestInt_func;

function TestInt__getClass() {
    return "TestInt";
}
TestInt.prototype._getClass = TestInt__getClass;

function TestInt__getField(name) {
    return null;
}
TestInt.prototype._getField = TestInt__getField;

function TestInt__setField(name, value) {}
TestInt.prototype._setField = TestInt__setField;

// CLASS TestLong
function TestLong() {
    this.__init_fields__();
}
exports.TestLong = TestLong;

function TestLong__init_fields__() {}
TestLong.prototype.__init_fields__ = TestLong__init_fields__;

function TestLong_run() {
    var map = new Map();
    var b = (3);
    _qrt.print(_qrt.toString(b));
    _qrt.print(_qrt.toString((this).func()));
}
TestLong.prototype.run = TestLong_run;

function TestLong_func() {
    return new Number();
}
TestLong.prototype.func = TestLong_func;

function TestLong__getClass() {
    return "TestLong";
}
TestLong.prototype._getClass = TestLong__getClass;

function TestLong__getField(name) {
    return null;
}
TestLong.prototype._getField = TestLong__getField;

function TestLong__setField(name, value) {}
TestLong.prototype._setField = TestLong__setField;

function main() {
    (new TestByte()).run();
    (new TestShort()).run();
    (new TestInt()).run();
    (new TestLong()).run();
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
    if ((className) === ("Map<byte,byte>")) {
        return new Map();
    }
    if ((className) === ("Map<short,short>")) {
        return new Map();
    }
    if ((className) === ("Map<int,int>")) {
        return new Map();
    }
    if ((className) === ("Map<long,long>")) {
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
    if ((className) === ("TestByte")) {
        return new TestByte();
    }
    if ((className) === ("TestShort")) {
        return new TestShort();
    }
    if ((className) === ("TestInt")) {
        return new TestInt();
    }
    if ((className) === ("TestLong")) {
        return new TestLong();
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
    if ((className) === ("Map<byte,byte>")) {
        return [];
    }
    if ((className) === ("Map<short,short>")) {
        return [];
    }
    if ((className) === ("Map<int,int>")) {
        return [];
    }
    if ((className) === ("Map<long,long>")) {
        return [];
    }
    if ((className) === ("ResponseHolder")) {
        return [new Field(new Class("HTTPResponse"), "response"), new Field(new Class("String"), "failure")];
    }
    if ((className) === ("Client")) {
        return [new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "url"), new Field(new Class("long"), "timeout")];
    }
    if ((className) === ("Server<Object>")) {
        return [new Field(new Class("Runtime"), "runtime"), new Field(new Class("Object"), "impl")];
    }
    if ((className) === ("TestByte")) {
        return [];
    }
    if ((className) === ("TestShort")) {
        return [];
    }
    if ((className) === ("TestInt")) {
        return [];
    }
    if ((className) === ("TestLong")) {
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
    if (((cls).id) === ("Map<byte,byte>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("byte"), new Class("byte")];
        return;
    }
    if (((cls).id) === ("Map<short,short>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("short"), new Class("short")];
        return;
    }
    if (((cls).id) === ("Map<int,int>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("int"), new Class("int")];
        return;
    }
    if (((cls).id) === ("Map<long,long>")) {
        (cls).name = "Map";
        (cls).parameters = [new Class("long"), new Class("long")];
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
    if (((cls).id) === ("TestByte")) {
        (cls).name = "TestByte";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("TestShort")) {
        (cls).name = "TestShort";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("TestInt")) {
        (cls).name = "TestInt";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("TestLong")) {
        (cls).name = "TestLong";
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
    if ((className) === ("Map<byte,byte>")) {}
    if ((className) === ("Map<short,short>")) {}
    if ((className) === ("Map<int,int>")) {}
    if ((className) === ("Map<long,long>")) {}
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
        if ((method) === ("getTimeout")) {
            var tmp_11 = object;
            return (tmp_11).getTimeout();
        }
        if ((method) === ("rpc")) {
            var tmp_12 = object;
            return (tmp_12).rpc((args)[0], (args)[1], (args)[2]);
        }
    }
    if ((className) === ("Client")) {
        if ((method) === ("getRuntime")) {
            var tmp_13 = object;
            return (tmp_13).getRuntime();
        }
        if ((method) === ("getURL")) {
            var tmp_14 = object;
            return (tmp_14).getURL();
        }
        if ((method) === ("getTimeout")) {
            var tmp_15 = object;
            return (tmp_15).getTimeout();
        }
        if ((method) === ("setTimeout")) {
            var tmp_16 = object;
            (tmp_16).setTimeout((args)[0]);
            return null;
        }
    }
    if ((className) === ("Server<Object>")) {
        if ((method) === ("getRuntime")) {
            var tmp_17 = object;
            return (tmp_17).getRuntime();
        }
        if ((method) === ("onHTTPRequest")) {
            var tmp_18 = object;
            (tmp_18).onHTTPRequest((args)[0], (args)[1]);
            return null;
        }
        if ((method) === ("onServletError")) {
            var tmp_19 = object;
            (tmp_19).onServletError((args)[0], (args)[1]);
            return null;
        }
    }
    if ((className) === ("TestByte")) {
        if ((method) === ("run")) {
            var tmp_20 = object;
            (tmp_20).run();
            return null;
        }
        if ((method) === ("func")) {
            var tmp_21 = object;
            return (tmp_21).func();
        }
    }
    if ((className) === ("TestShort")) {
        if ((method) === ("run")) {
            var tmp_22 = object;
            (tmp_22).run();
            return null;
        }
        if ((method) === ("func")) {
            var tmp_23 = object;
            return (tmp_23).func();
        }
    }
    if ((className) === ("TestInt")) {
        if ((method) === ("run")) {
            var tmp_24 = object;
            (tmp_24).run();
            return null;
        }
        if ((method) === ("func")) {
            var tmp_25 = object;
            return (tmp_25).func();
        }
    }
    if ((className) === ("TestLong")) {
        if ((method) === ("run")) {
            var tmp_26 = object;
            (tmp_26).run();
            return null;
        }
        if ((method) === ("func")) {
            var tmp_27 = object;
            return (tmp_27).func();
        }
    }
    return null;
}
exports._invoke = _invoke;
