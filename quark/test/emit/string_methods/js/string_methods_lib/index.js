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
}
ResponseHolder.prototype.__init_fields__ = ResponseHolder__init_fields__;

function ResponseHolder_onHTTPResponse(request, response) {
    (this).response = response;
}
ResponseHolder.prototype.onHTTPResponse = ResponseHolder_onHTTPResponse;

function ResponseHolder__getClass() {
    return "ResponseHolder";
}
ResponseHolder.prototype._getClass = ResponseHolder__getClass;

function ResponseHolder__getField(name) {
    if ((name) === ("response")) {
        return (this).response;
    }
    return null;
}
ResponseHolder.prototype._getField = ResponseHolder__getField;

function ResponseHolder__setField(name, value) {
    if ((name) === ("response")) {
        (this).response = value;
    }
}
ResponseHolder.prototype._setField = ResponseHolder__setField;

function ResponseHolder_onHTTPInit(request) {}
ResponseHolder.prototype.onHTTPInit = ResponseHolder_onHTTPInit;

function ResponseHolder_onHTTPError(request) {}
ResponseHolder.prototype.onHTTPError = ResponseHolder_onHTTPError;

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
    (request).setBody((envelope).getString());
    var rt = (this).getRuntime();
    var rh = new ResponseHolder();
    (rt).acquire();
    (rt).request(request, rh);
    while (((rh).response) === (null)) {
        (rt).wait(3.14);
    }
    var response = (rh).response;
    (rt).release();
    var body = (response).getBody();
    var obj = _qrt.json_from_string(body);
    return fromJSON(new Class(((obj).getObjectItem("$class")).getString()), obj);
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
    (response).setBody((toJSON(result)).getString());
    (this.getRuntime()).respond(request, response);
}
Server.prototype.onHTTPRequest = Server_onHTTPRequest;

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
 * called if the servlet could not be installed
 */
function Server_onServletError(url, error) {}
Server.prototype.onServletError = Server_onServletError;

/**
 * called when the servlet is removed
 */
function Server_onServletEnd(url) {}
Server.prototype.onServletEnd = Server_onServletEnd;
/* END_BUILTIN */


// CLASS string_test
function string_test() {
    this.__init_fields__();
}
exports.string_test = string_test;

function string_test__init_fields__() {}
string_test.prototype.__init_fields__ = string_test__init_fields__;

function string_test_check(actual, expected, op, q) {
    if ((actual) === (expected)) {
        _qrt.print(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q));
    } else {
        _qrt.print(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q));
    }
}
string_test.prototype.check = string_test_check;

function string_test__getClass() {
    return "string_test";
}
string_test.prototype._getClass = string_test__getClass;

function string_test__getField(name) {
    return null;
}
string_test.prototype._getField = string_test__getField;

function string_test__setField(name, value) {}
string_test.prototype._setField = string_test__setField;

// CLASS test_size

function test_size(what) {
    test_size.super_.call(this);
    (this).what = what;
}
exports.test_size = test_size;
_qrt.util.inherits(test_size, string_test);

function test_size__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
}
test_size.prototype.__init_fields__ = test_size__init_fields__;

function test_size_does(expected) {
    var actual = (this.what).length;
    var op = (("'") + (this.what)) + ("'.size()");
    (this).check(_qrt.toString(actual), _qrt.toString(expected), op, "");
    return this;
}
test_size.prototype.does = test_size_does;

function test_size__getClass() {
    return "test_size";
}
test_size.prototype._getClass = test_size__getClass;

function test_size__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    return null;
}
test_size.prototype._getField = test_size__getField;

function test_size__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
}
test_size.prototype._setField = test_size__setField;

// CLASS test_startsWith

function test_startsWith(what) {
    test_startsWith.super_.call(this);
    (this).what = what;
}
exports.test_startsWith = test_startsWith;
_qrt.util.inherits(test_startsWith, string_test);

function test_startsWith__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_startsWith.prototype.__init_fields__ = test_startsWith__init_fields__;

function test_startsWith_that(_that) {
    (this)._that = _that;
    return this;
}
test_startsWith.prototype.that = test_startsWith_that;

function test_startsWith_does(expected) {
    (this).check(((((this).what).indexOf((this)._that)===0)).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.startsWith('")) + ((this)._that)) + ("'"), "");
    return this;
}
test_startsWith.prototype.does = test_startsWith_does;

function test_startsWith__getClass() {
    return "test_startsWith";
}
test_startsWith.prototype._getClass = test_startsWith__getClass;

function test_startsWith__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    if ((name) === ("_that")) {
        return (this)._that;
    }
    return null;
}
test_startsWith.prototype._getField = test_startsWith__getField;

function test_startsWith__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
    if ((name) === ("_that")) {
        (this)._that = value;
    }
}
test_startsWith.prototype._setField = test_startsWith__setField;

// CLASS test_endsWith

function test_endsWith(what) {
    test_endsWith.super_.call(this);
    (this).what = what;
}
exports.test_endsWith = test_endsWith;
_qrt.util.inherits(test_endsWith, string_test);

function test_endsWith__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_endsWith.prototype.__init_fields__ = test_endsWith__init_fields__;

function test_endsWith_that(_that) {
    (this)._that = _that;
    return this;
}
test_endsWith.prototype.that = test_endsWith_that;

function test_endsWith_does(expected) {
    (this).check(((((this).what).indexOf(((this)._that), ((this).what).length - ((this)._that).length) !== -1)).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.endsWith('")) + ((this)._that)) + ("'"), "");
    return this;
}
test_endsWith.prototype.does = test_endsWith_does;

function test_endsWith__getClass() {
    return "test_endsWith";
}
test_endsWith.prototype._getClass = test_endsWith__getClass;

function test_endsWith__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    if ((name) === ("_that")) {
        return (this)._that;
    }
    return null;
}
test_endsWith.prototype._getField = test_endsWith__getField;

function test_endsWith__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
    if ((name) === ("_that")) {
        (this)._that = value;
    }
}
test_endsWith.prototype._setField = test_endsWith__setField;

// CLASS test_find

function test_find(what) {
    test_find.super_.call(this);
    (this).what = what;
}
exports.test_find = test_find;
_qrt.util.inherits(test_find, string_test);

function test_find__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this._that = null;
}
test_find.prototype.__init_fields__ = test_find__init_fields__;

function test_find_that(_that) {
    (this)._that = _that;
    return this;
}
test_find.prototype.that = test_find_that;

function test_find_does(expected) {
    (this).check(_qrt.toString(((this).what).indexOf((this)._that)), _qrt.toString(expected), (((("'") + ((this).what)) + ("'.find('")) + ((this)._that)) + ("'"), "");
    return this;
}
test_find.prototype.does = test_find_does;

function test_find__getClass() {
    return "test_find";
}
test_find.prototype._getClass = test_find__getClass;

function test_find__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    if ((name) === ("_that")) {
        return (this)._that;
    }
    return null;
}
test_find.prototype._getField = test_find__getField;

function test_find__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
    if ((name) === ("_that")) {
        (this)._that = value;
    }
}
test_find.prototype._setField = test_find__setField;

// CLASS test_substring

function test_substring(what) {
    test_substring.super_.call(this);
    (this).what = what;
}
exports.test_substring = test_substring;
_qrt.util.inherits(test_substring, string_test);

function test_substring__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.start = null;
    this.end = null;
}
test_substring.prototype.__init_fields__ = test_substring__init_fields__;

function test_substring_that(start, end) {
    (this).start = start;
    (this).end = end;
    return this;
}
test_substring.prototype.that = test_substring_that;

function test_substring_does(expected) {
    (this).check(((this).what).substring(((this).start), ((this).end)), expected, (((((("'") + ((this).what)) + ("'.substring(")) + (_qrt.toString((this).start))) + (", ")) + (_qrt.toString((this).end))) + (")"), "'");
    return this;
}
test_substring.prototype.does = test_substring_does;

function test_substring__getClass() {
    return "test_substring";
}
test_substring.prototype._getClass = test_substring__getClass;

function test_substring__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    if ((name) === ("start")) {
        return (this).start;
    }
    if ((name) === ("end")) {
        return (this).end;
    }
    return null;
}
test_substring.prototype._getField = test_substring__getField;

function test_substring__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
    if ((name) === ("start")) {
        (this).start = value;
    }
    if ((name) === ("end")) {
        (this).end = value;
    }
}
test_substring.prototype._setField = test_substring__setField;

// CLASS test_replace

function test_replace(what) {
    test_replace.super_.call(this);
    (this).what = what;
}
exports.test_replace = test_replace;
_qrt.util.inherits(test_replace, string_test);

function test_replace__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.start = null;
    this.end = null;
}
test_replace.prototype.__init_fields__ = test_replace__init_fields__;

function test_replace_that(start, end) {
    (this).start = start;
    (this).end = end;
    return this;
}
test_replace.prototype.that = test_replace_that;

function test_replace_does(expected) {
    (this).check(((this).what).replace(((this).start), ((this).end)), expected, (((((("'") + ((this).what)) + ("'.replace('")) + ((this).start)) + ("', '")) + ((this).end)) + ("')"), "'");
    return this;
}
test_replace.prototype.does = test_replace_does;

function test_replace__getClass() {
    return "test_replace";
}
test_replace.prototype._getClass = test_replace__getClass;

function test_replace__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    if ((name) === ("start")) {
        return (this).start;
    }
    if ((name) === ("end")) {
        return (this).end;
    }
    return null;
}
test_replace.prototype._getField = test_replace__getField;

function test_replace__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
    if ((name) === ("start")) {
        (this).start = value;
    }
    if ((name) === ("end")) {
        (this).end = value;
    }
}
test_replace.prototype._setField = test_replace__setField;

// CLASS test_join

function test_join(what) {
    test_join.super_.call(this);
    (this).what = what;
}
exports.test_join = test_join;
_qrt.util.inherits(test_join, string_test);

function test_join__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.parts = null;
    this.strparts = null;
    this.sep = null;
}
test_join.prototype.__init_fields__ = test_join__init_fields__;

function test_join_that() {
    (this).parts = new Array();
    (this).strparts = "";
    (this).sep = "";
    return this;
}
test_join.prototype.that = test_join_that;

function test_join_a(part) {
    ((this).parts).push(part);
    (this).strparts = (((((this).strparts) + ((this).sep)) + ("'")) + (part)) + ("'");
    (this).sep = ", ";
    return this;
}
test_join.prototype.a = test_join_a;

function test_join_does(expected) {
    (this).check(((this).parts).join((this).what), expected, (((("'") + ((this).what)) + ("'.join([")) + ((this).strparts)) + ("])"), "'");
    return this;
}
test_join.prototype.does = test_join_does;

function test_join__getClass() {
    return "test_join";
}
test_join.prototype._getClass = test_join__getClass;

function test_join__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    if ((name) === ("parts")) {
        return (this).parts;
    }
    if ((name) === ("strparts")) {
        return (this).strparts;
    }
    if ((name) === ("sep")) {
        return (this).sep;
    }
    return null;
}
test_join.prototype._getField = test_join__getField;

function test_join__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
    if ((name) === ("parts")) {
        (this).parts = value;
    }
    if ((name) === ("strparts")) {
        (this).strparts = value;
    }
    if ((name) === ("sep")) {
        (this).sep = value;
    }
}
test_join.prototype._setField = test_join__setField;

// CLASS test_split

function test_split(sep, altsep) {
    test_split.super_.call(this);
    (this).sep = sep;
    (this).altsep = altsep;
}
exports.test_split = test_split;
_qrt.util.inherits(test_split, string_test);

function test_split__init_fields__() {
    string_test.prototype.__init_fields__.call(this);
    this.what = null;
    this.sep = null;
    this.altsep = null;
}
test_split.prototype.__init_fields__ = test_split__init_fields__;

function test_split_that(what) {
    (this).what = what;
    return this;
}
test_split.prototype.that = test_split_that;

function test_split_does(expected) {
    var parts = ((this).what).split((this).sep);
    var actual = (parts).join((this).altsep);
    (this).check(actual, expected, (((((("'") + ((this).altsep)) + ("'.join('")) + ((this).what)) + ("'.split('")) + ((this).sep)) + ("'))"), "'");
    return this;
}
test_split.prototype.does = test_split_does;

function test_split__getClass() {
    return "test_split";
}
test_split.prototype._getClass = test_split__getClass;

function test_split__getField(name) {
    if ((name) === ("what")) {
        return (this).what;
    }
    if ((name) === ("sep")) {
        return (this).sep;
    }
    if ((name) === ("altsep")) {
        return (this).altsep;
    }
    return null;
}
test_split.prototype._getField = test_split__getField;

function test_split__setField(name, value) {
    if ((name) === ("what")) {
        (this).what = value;
    }
    if ((name) === ("sep")) {
        (this).sep = value;
    }
    if ((name) === ("altsep")) {
        (this).altsep = value;
    }
}
test_split.prototype._setField = test_split__setField;

function main() {
    (new test_size("")).does(0);
    (new test_size("1")).does(1);
    (new test_size("22")).does(2);
    (new test_size("333")).does(3);
    (new test_size("4444")).does(4);
    ((((((((new test_startsWith("abcd")).that("abc")).does(true)).that("bc")).does(false)).that("")).does(true)).that("abcde")).does(false);
    ((((((((new test_endsWith("abcd")).that("bcd")).does(true)).that("bc")).does(false)).that("")).does(true)).that("xabcd")).does(false);
    ((((((((((((((((new test_find("abcd")).that("bcd")).does(1)).that("bc")).does(1)).that("")).does(0)).that("xabcd")).does(-(1))).that("abcd")).does(0)).that("abc")).does(0)).that("a")).does(0)).that("x")).does(-(1));
    ((((((((((((((((new test_substring("abcd")).that(0, 0)).does("")).that(0, 4)).does("abcd")).that(0, 1)).does("a")).that(1, 2)).does("b")).that(2, 4)).does("cd")).that(3, 4)).does("d")).that(1, 1)).does("")).that(2, 2)).does("");
    ((((((((((((((new test_replace("abcd")).that("ab", "AB")).does("ABcd")).that("b", "bb")).does("abbcd")).that("ab", "ab")).does("abcd")).that("", "EE")).does("EEabcd")).that("c", "EE")).does("abEEd")).that("d", "EE")).does("abcEE")).that("x", "EE")).does("abcd");
    ((((((((((((((new test_join("")).that()).does("")).that()).a("a")).does("a")).that()).a("a")).a("b")).does("ab")).that()).a("a")).a("b")).a("c")).does("abc");
    ((((((((((((((new test_join(",")).that()).does("")).that()).a("a")).does("a")).that()).a("a")).a("b")).does("a,b")).that()).a("a")).a("b")).a("c")).does("a,b,c");
    ((((((((((((((((new test_split(",", "|")).that("")).does("")).that("a")).does("a")).that(",")).does("|")).that("a,")).does("a|")).that(",a")).does("|a")).that("a,b")).does("a|b")).that("a,,b")).does("a||b")).that("a,b,c")).does("a|b|c");
    ((((((((((((((((new test_split("foo", "|")).that("")).does("")).that("a")).does("a")).that("foo")).does("|")).that("afoo")).does("a|")).that("fooa")).does("|a")).that("afoob")).does("a|b")).that("afoofoob")).does("a||b")).that("afoobfooc")).does("a|b|c");
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
    if ((className) === ("string_test")) {
        return new string_test();
    }
    if ((className) === ("test_size")) {
        return new test_size((args)[0]);
    }
    if ((className) === ("test_startsWith")) {
        return new test_startsWith((args)[0]);
    }
    if ((className) === ("test_endsWith")) {
        return new test_endsWith((args)[0]);
    }
    if ((className) === ("test_find")) {
        return new test_find((args)[0]);
    }
    if ((className) === ("test_substring")) {
        return new test_substring((args)[0]);
    }
    if ((className) === ("test_replace")) {
        return new test_replace((args)[0]);
    }
    if ((className) === ("test_join")) {
        return new test_join((args)[0]);
    }
    if ((className) === ("test_split")) {
        return new test_split((args)[0], (args)[1]);
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
        return [new Field(new Class("HTTPResponse"), "response")];
    }
    if ((className) === ("Client")) {
        return [new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "url")];
    }
    if ((className) === ("Server<Object>")) {
        return [new Field(new Class("Runtime"), "runtime"), new Field(new Class("Object"), "impl")];
    }
    if ((className) === ("string_test")) {
        return [];
    }
    if ((className) === ("test_size")) {
        return [new Field(new Class("String"), "what")];
    }
    if ((className) === ("test_startsWith")) {
        return [new Field(new Class("String"), "what"), new Field(new Class("String"), "_that")];
    }
    if ((className) === ("test_endsWith")) {
        return [new Field(new Class("String"), "what"), new Field(new Class("String"), "_that")];
    }
    if ((className) === ("test_find")) {
        return [new Field(new Class("String"), "what"), new Field(new Class("String"), "_that")];
    }
    if ((className) === ("test_substring")) {
        return [new Field(new Class("String"), "what"), new Field(new Class("int"), "start"), new Field(new Class("int"), "end")];
    }
    if ((className) === ("test_replace")) {
        return [new Field(new Class("String"), "what"), new Field(new Class("String"), "start"), new Field(new Class("String"), "end")];
    }
    if ((className) === ("test_join")) {
        return [new Field(new Class("String"), "what"), new Field(new Class("List<String>"), "parts"), new Field(new Class("String"), "strparts"), new Field(new Class("String"), "sep")];
    }
    if ((className) === ("test_split")) {
        return [new Field(new Class("String"), "what"), new Field(new Class("String"), "sep"), new Field(new Class("String"), "altsep")];
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
    if (((cls).id) === ("string_test")) {
        (cls).name = "string_test";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_size")) {
        (cls).name = "test_size";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_startsWith")) {
        (cls).name = "test_startsWith";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_endsWith")) {
        (cls).name = "test_endsWith";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_find")) {
        (cls).name = "test_find";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_substring")) {
        (cls).name = "test_substring";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_replace")) {
        (cls).name = "test_replace";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_join")) {
        (cls).name = "test_join";
        (cls).parameters = [];
        return;
    }
    if (((cls).id) === ("test_split")) {
        (cls).name = "test_split";
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
    }
    if ((className) === ("Service")) {
        if ((method) === ("getURL")) {
            var tmp_8 = object;
            return (tmp_8).getURL();
        }
        if ((method) === ("getRuntime")) {
            var tmp_9 = object;
            return (tmp_9).getRuntime();
        }
        if ((method) === ("rpc")) {
            var tmp_10 = object;
            return (tmp_10).rpc((args)[0], (args)[1]);
        }
    }
    if ((className) === ("Client")) {
        if ((method) === ("getRuntime")) {
            var tmp_11 = object;
            return (tmp_11).getRuntime();
        }
        if ((method) === ("getURL")) {
            var tmp_12 = object;
            return (tmp_12).getURL();
        }
    }
    if ((className) === ("Server<Object>")) {
        if ((method) === ("getRuntime")) {
            var tmp_13 = object;
            return (tmp_13).getRuntime();
        }
        if ((method) === ("onHTTPRequest")) {
            var tmp_14 = object;
            (tmp_14).onHTTPRequest((args)[0], (args)[1]);
            return null;
        }
    }
    if ((className) === ("string_test")) {
        if ((method) === ("check")) {
            var tmp_15 = object;
            (tmp_15).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_size")) {
        if ((method) === ("does")) {
            var tmp_16 = object;
            return (tmp_16).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_17 = object;
            (tmp_17).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_startsWith")) {
        if ((method) === ("that")) {
            var tmp_18 = object;
            return (tmp_18).that((args)[0]);
        }
        if ((method) === ("does")) {
            var tmp_19 = object;
            return (tmp_19).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_20 = object;
            (tmp_20).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_endsWith")) {
        if ((method) === ("that")) {
            var tmp_21 = object;
            return (tmp_21).that((args)[0]);
        }
        if ((method) === ("does")) {
            var tmp_22 = object;
            return (tmp_22).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_23 = object;
            (tmp_23).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_find")) {
        if ((method) === ("that")) {
            var tmp_24 = object;
            return (tmp_24).that((args)[0]);
        }
        if ((method) === ("does")) {
            var tmp_25 = object;
            return (tmp_25).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_26 = object;
            (tmp_26).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_substring")) {
        if ((method) === ("that")) {
            var tmp_27 = object;
            return (tmp_27).that((args)[0], (args)[1]);
        }
        if ((method) === ("does")) {
            var tmp_28 = object;
            return (tmp_28).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_29 = object;
            (tmp_29).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_replace")) {
        if ((method) === ("that")) {
            var tmp_30 = object;
            return (tmp_30).that((args)[0], (args)[1]);
        }
        if ((method) === ("does")) {
            var tmp_31 = object;
            return (tmp_31).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_32 = object;
            (tmp_32).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_join")) {
        if ((method) === ("that")) {
            var tmp_33 = object;
            return (tmp_33).that();
        }
        if ((method) === ("a")) {
            var tmp_34 = object;
            return (tmp_34).a((args)[0]);
        }
        if ((method) === ("does")) {
            var tmp_35 = object;
            return (tmp_35).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_36 = object;
            (tmp_36).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    if ((className) === ("test_split")) {
        if ((method) === ("that")) {
            var tmp_37 = object;
            return (tmp_37).that((args)[0]);
        }
        if ((method) === ("does")) {
            var tmp_38 = object;
            return (tmp_38).does((args)[0]);
        }
        if ((method) === ("check")) {
            var tmp_39 = object;
            (tmp_39).check((args)[0], (args)[1], (args)[2], (args)[3]);
            return null;
        }
    }
    return null;
}
exports._invoke = _invoke;
