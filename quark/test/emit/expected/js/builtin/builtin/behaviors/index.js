var _qrt = require("builtin/quark_runtime.js");
var builtin = require('../../builtin');
exports.builtin = builtin;
var builtin = require('../../builtin');
exports.builtin = builtin;
var builtin = require('../../builtin');
exports.builtin = builtin;
var builtin_md = require('../../builtin_md');
exports.builtin_md = builtin_md;



// CLASS RPC

function RPC(service, name, options) {
    this.__init_fields__();
    var timeout = (service).getTimeout();
    if (((options).length) > (0)) {
        var map = (options)[0];
        var override = _qrt.map_get((map), ("timeout"));
        if ((override) !== (null)) {
            timeout = (override);
        }
    }
    (this).returned = ((builtin.reflect.Class.get(_qrt._getClass(service))).getMethod(name)).getType();
    (this).timeout = timeout;
    (this).name = name;
    (this).service = service;
}
exports.RPC = RPC;

function RPC__init_fields__() {
    this.service = null;
    this.returned = null;
    this.timeout = null;
    this.name = null;
}
RPC.prototype.__init_fields__ = RPC__init_fields__;
RPC.builtin_behaviors_RPC_ref = builtin_md.Root.builtin_behaviors_RPC_md;
function RPC_call(message) {
    var request = new _qrt.HTTPRequest(((this).service).getURL());
    var json = builtin.toJSON(message, null);
    var envelope = new _qrt.JSONObject();
    (envelope).setObjectItem(("$method"), ((new _qrt.JSONObject()).setString((this).name)));
    (envelope).setObjectItem(("$context"), ((new _qrt.JSONObject()).setString("TBD")));
    (envelope).setObjectItem(("rpc"), (json));
    (request).setBody((envelope).toString());
    (request).setMethod("POST");
    var rpc = new RPCRequest(message, this);
    var result = (rpc).call(request);
    builtin.concurrent.FutureWait.waitFor(result, (1000));
    return result;
}
RPC.prototype.call = RPC_call;

function RPC__getClass() {
    return "builtin.behaviors.RPC";
}
RPC.prototype._getClass = RPC__getClass;

function RPC__getField(name) {
    if ((name) === ("service")) {
        return (this).service;
    }
    if ((name) === ("returned")) {
        return (this).returned;
    }
    if ((name) === ("timeout")) {
        return (this).timeout;
    }
    if ((name) === ("name")) {
        return (this).name;
    }
    return null;
}
RPC.prototype._getField = RPC__getField;

function RPC__setField(name, value) {
    if ((name) === ("service")) {
        (this).service = value;
    }
    if ((name) === ("returned")) {
        (this).returned = value;
    }
    if ((name) === ("timeout")) {
        (this).timeout = value;
    }
    if ((name) === ("name")) {
        (this).name = value;
    }
}
RPC.prototype._setField = RPC__setField;

// CLASS RPCRequest

function RPCRequest(message, rpc) {
    this.__init_fields__();
    (this).retval = ((rpc).returned).construct([]);
    (this).message = message;
    (this).timeout = new builtin.concurrent.Timeout((rpc).timeout);
    (this).rpc = rpc;
}
exports.RPCRequest = RPCRequest;

function RPCRequest__init_fields__() {
    this.rpc = null;
    this.retval = null;
    this.message = null;
    this.timeout = null;
}
RPCRequest.prototype.__init_fields__ = RPCRequest__init_fields__;
RPCRequest.builtin_behaviors_RPCRequest_ref = builtin_md.Root.builtin_behaviors_RPCRequest_md;
function RPCRequest_call(request) {
    ((this).timeout).start(this);
    (builtin.concurrent.Context.runtime()).request(request, this);
    return (this).retval;
}
RPCRequest.prototype.call = RPCRequest_call;

function RPCRequest_onHTTPResponse(rq, response) {
    ((this).timeout).cancel();
    if (((response).getCode()) !== (200)) {
        ((this).retval).finish(((("RPC ") + (((this).rpc).name)) + ("(...) failed: Server returned error ")) + (_qrt.toString((response).getCode())));
        return;
    }
    var body = (response).getBody();
    var obj = _qrt.json_from_string(body);
    var classname = ((obj).getObjectItem("$class")).getString();
    if ((classname) === (null)) {
        ((this).retval).finish((("RPC ") + (((this).rpc).name)) + ("(...) failed: Server returned unrecognizable content"));
        return;
    } else {
        builtin.fromJSON((this).retval, obj);
        ((this).retval).finish(null);
    }
}
RPCRequest.prototype.onHTTPResponse = RPCRequest_onHTTPResponse;

function RPCRequest_onTimeout(timeout) {
    ((this).retval).finish("request timed out");
}
RPCRequest.prototype.onTimeout = RPCRequest_onTimeout;

function RPCRequest__getClass() {
    return "builtin.behaviors.RPCRequest";
}
RPCRequest.prototype._getClass = RPCRequest__getClass;

function RPCRequest__getField(name) {
    if ((name) === ("rpc")) {
        return (this).rpc;
    }
    if ((name) === ("retval")) {
        return (this).retval;
    }
    if ((name) === ("message")) {
        return (this).message;
    }
    if ((name) === ("timeout")) {
        return (this).timeout;
    }
    return null;
}
RPCRequest.prototype._getField = RPCRequest__getField;

function RPCRequest__setField(name, value) {
    if ((name) === ("rpc")) {
        (this).rpc = value;
    }
    if ((name) === ("retval")) {
        (this).retval = value;
    }
    if ((name) === ("message")) {
        (this).message = value;
    }
    if ((name) === ("timeout")) {
        (this).timeout = value;
    }
}
RPCRequest.prototype._setField = RPCRequest__setField;

function RPCRequest_onHTTPInit(request) {}
RPCRequest.prototype.onHTTPInit = RPCRequest_onHTTPInit;

function RPCRequest_onHTTPError(request, message) {}
RPCRequest.prototype.onHTTPError = RPCRequest_onHTTPError;

function RPCRequest_onHTTPFinal(request) {}
RPCRequest.prototype.onHTTPFinal = RPCRequest_onHTTPFinal;
