var _qrt = require("builtin/quark_runtime.js");
var reflect = require('./reflect');
exports.reflect = reflect;
var behaviors = require('./behaviors');
exports.behaviors = behaviors;
var concurrent = require('./concurrent');
exports.concurrent = concurrent;
var builtin_md = require('../builtin_md');
exports.builtin_md = builtin_md;



/**
 * Serializes object tree into JSON. skips over fields starting with underscore
 */
function toJSON(obj, cls) {
    var result = new _qrt.JSONObject();
    if ((obj) === (null)) {
        (result).setNull();
        return result;
    }
    if ((cls) === (null)) {
        cls = reflect.Class.get(_qrt._getClass(obj));
    }
    var idx = 0;
    if (((cls).name) === ("builtin.String")) {
        (result).setString(obj);
        return result;
    }
    if (((((((cls).name) === ("builtin.byte")) || (((cls).name) === ("builtin.short"))) || (((cls).name) === ("builtin.int"))) || (((cls).name) === ("builtin.long"))) || (((cls).name) === ("builtin.float"))) {
        (result).setNumber(obj);
        return result;
    }
    if (((cls).name) === ("builtin.List")) {
        (result).setList();
        var list = obj;
        while ((idx) < ((list).length)) {
            (result).setListItem(idx, toJSON((list)[idx], null));
            idx = (idx) + (1);
        }
        return result;
    }
    if (((cls).name) === ("builtin.Map")) {
        (result).setObject();
        var map = obj;
        return result;
    }
    (result).setObjectItem(("$class"), ((new _qrt.JSONObject()).setString((cls).id)));
    var fields = (cls).getFields();
    while ((idx) < ((fields).length)) {
        var fieldName = ((fields)[idx]).name;
        if (!(((fieldName).indexOf("_")===0))) {
            (result).setObjectItem((fieldName), (toJSON((obj)._getField(fieldName), ((fields)[idx]).getType())));
        }
        idx = (idx) + (1);
    }
    return result;
}
exports.toJSON = toJSON;

/**
 * deserialize json into provided result object. Skip over fields starting with underscore
 */
function fromJSON(result, json) {
    if (((json) === (null)) || ((json).isNull())) {
        return null;
    }
    var idx = 0;
    var cls = reflect.Class.get(_qrt._getClass(result));
    if (((cls).name) === ("builtin.List")) {
        var list = result;
        while ((idx) < ((json).size())) {
            (list).push(fromJSON((((cls).parameters)[0]).construct([]), (json).getListItem(idx)));
            idx = (idx) + (1);
        }
        return list;
    }
    var fields = (cls).getFields();
    while ((idx) < ((fields).length)) {
        var f = (fields)[idx];
        idx = (idx) + (1);
        if ((((f).name).indexOf("_")===0)) {
            continue;
        }
        if ((((f).getType()).name) === ("builtin.String")) {
            var s = ((json).getObjectItem((f).name)).getString();
            (result)._setField(((f).name), (s));
            continue;
        }
        if ((((f).getType()).name) === ("builtin.float")) {
            var flt = ((json).getObjectItem((f).name)).getNumber();
            (result)._setField(((f).name), (flt));
            continue;
        }
        if ((((f).getType()).name) === ("builtin.int")) {
            if (!(((json).getObjectItem((f).name)).isNull())) {
                var i = Math.round(((json).getObjectItem((f).name)).getNumber());
                (result)._setField(((f).name), (i));
            }
            continue;
        }
        if ((((f).getType()).name) === ("builtin.bool")) {
            if (!(((json).getObjectItem((f).name)).isNull())) {
                var b = ((json).getObjectItem((f).name)).getBool();
                (result)._setField(((f).name), (b));
            }
            continue;
        }
        (result)._setField(((f).name), (fromJSON(((f).getType()).construct([]), (json).getObjectItem((f).name))));
    }
    return result;
}
exports.fromJSON = fromJSON;

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
ResponseHolder.builtin_ResponseHolder_ref = builtin_md.Root.builtin_ResponseHolder_md;
function ResponseHolder_onHTTPResponse(request, response) {
    (this).response = response;
}
ResponseHolder.prototype.onHTTPResponse = ResponseHolder_onHTTPResponse;

function ResponseHolder_onHTTPError(request, message) {
    this.failure = message;
}
ResponseHolder.prototype.onHTTPError = ResponseHolder_onHTTPError;

function ResponseHolder__getClass() {
    return "builtin.ResponseHolder";
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

// CLASS Service
function Service() {
    this.__init_fields__();
}
exports.Service = Service;

function Service__init_fields__() {}
Service.prototype.__init_fields__ = Service__init_fields__;

function Service_getURL() { /* interface */ }
Service.prototype.getURL = Service_getURL;

function Service_getTimeout() { /* interface */ }
Service.prototype.getTimeout = Service_getTimeout;

function Service_rpc(name, message, options) {
    var rpc = new behaviors.RPC(this, name, options);
    return (rpc).call(message);
}
Service.prototype.rpc = Service_rpc;

// CLASS Client

function Client(url) {
    this.__init_fields__();
    (this).url = url;
    (this).timeout = (0);
}
exports.Client = Client;

function Client__init_fields__() {
    this.url = null;
    this.timeout = null;
}
Client.prototype.__init_fields__ = Client__init_fields__;
Client.builtin_Client_ref = builtin_md.Root.builtin_Client_md;
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
    return "builtin.Client";
}
Client.prototype._getClass = Client__getClass;

function Client__getField(name) {
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
    if ((name) === ("url")) {
        (this).url = value;
    }
    if ((name) === ("timeout")) {
        (this).timeout = value;
    }
}
Client.prototype._setField = Client__setField;

// CLASS ServerResponder

function ServerResponder(request, response) {
    this.__init_fields__();
    (this).request = request;
    (this).response = response;
}
exports.ServerResponder = ServerResponder;

function ServerResponder__init_fields__() {
    this.request = null;
    this.response = null;
}
ServerResponder.prototype.__init_fields__ = ServerResponder__init_fields__;
ServerResponder.builtin_ServerResponder_ref = builtin_md.Root.builtin_ServerResponder_md;
function ServerResponder_onFuture(result) {
    var error = (result).getError();
    if ((error) !== (null)) {
        (this.response).setCode(404);
    } else {
        ((this).response).setBody((toJSON(result, null)).toString());
        ((this).response).setCode(200);
    }
    (concurrent.Context.runtime()).respond(this.request, this.response);
}
ServerResponder.prototype.onFuture = ServerResponder_onFuture;

function ServerResponder__getClass() {
    return "builtin.ServerResponder";
}
ServerResponder.prototype._getClass = ServerResponder__getClass;

function ServerResponder__getField(name) {
    if ((name) === ("request")) {
        return (this).request;
    }
    if ((name) === ("response")) {
        return (this).response;
    }
    return null;
}
ServerResponder.prototype._getField = ServerResponder__getField;

function ServerResponder__setField(name, value) {
    if ((name) === ("request")) {
        (this).request = value;
    }
    if ((name) === ("response")) {
        (this).response = value;
    }
}
ServerResponder.prototype._setField = ServerResponder__setField;

// CLASS Server

function Server(impl) {
    this.__init_fields__();
    (this).impl = impl;
}
exports.Server = Server;

function Server__init_fields__() {
    this.impl = null;
}
Server.prototype.__init_fields__ = Server__init_fields__;
Server.builtin_Server_Object__ref = builtin_md.Root.builtin_Server_Object__md;
function Server_onHTTPRequest(request, response) {
    var body = (request).getBody();
    var envelope = _qrt.json_from_string(body);
    if (((((envelope).getObjectItem("$method")) === ((envelope).undefined())) || (((envelope).getObjectItem("rpc")) === ((envelope).undefined()))) || ((((envelope).getObjectItem("rpc")).getObjectItem("$class")) === (((envelope).getObjectItem("rpc")).undefined()))) {
        (response).setBody((("Failed to understand request.\n\n") + (body)) + ("\n"));
        (response).setCode(400);
        (concurrent.Context.runtime()).respond(request, response);
    } else {
        var methodName = ((envelope).getObjectItem("$method")).getString();
        var json = (envelope).getObjectItem("rpc");
        var method = (((reflect.Class.get(_qrt._getClass(this))).getField("impl")).getType()).getMethod(methodName);
        var argType = reflect.Class.get(((method).parameters)[0]);
        var arg = (argType).construct([]);
        var argument = fromJSON(arg, json);
        var result = (method).invoke(this.impl, [argument]);
        (result).onFinished(new ServerResponder(request, response));
    }
}
Server.prototype.onHTTPRequest = Server_onHTTPRequest;

function Server_onServletError(url, message) {
    (concurrent.Context.runtime()).fail(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message));
}
Server.prototype.onServletError = Server_onServletError;

function Server__getClass() {
    return "builtin.Server<Object>";
}
Server.prototype._getClass = Server__getClass;

function Server__getField(name) {
    if ((name) === ("impl")) {
        return (this).impl;
    }
    return null;
}
Server.prototype._getField = Server__getField;

function Server__setField(name, value) {
    if ((name) === ("impl")) {
        (this).impl = value;
    }
}
Server.prototype._setField = Server__setField;

function Server_serveHTTP(url) {
    (concurrent.Context.runtime()).serveHTTP(url, this);
}
Server.prototype.serveHTTP = Server_serveHTTP;

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
