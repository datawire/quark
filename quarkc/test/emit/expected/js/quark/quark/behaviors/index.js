var _qrt = require("quark/quark_runtime.js");
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark_md = require('../../quark_md/index.js');
exports.quark_md = quark_md;



// CLASS RPC

function RPC(service, methodName) {
    this.__init_fields__();
    var timeout = (service)._getField("timeout");
    if (((timeout) === (null)) || ((timeout) <= (0.0))) {
        timeout = 10.0;
    }
    var override = (service).getTimeout();
    if (((override) !== (null)) && ((override) > (0.0))) {
        timeout = override;
    }
    (this).returned = ((quark.reflect.Class.get(_qrt._getClass(service))).getMethod(methodName)).getType();
    (this).timeout = timeout;
    (this).methodName = methodName;
    (this).service = service;
}
exports.RPC = RPC;

function RPC__init_fields__() {
    this.service = null;
    this.returned = null;
    this.timeout = null;
    this.methodName = null;
    this.instance = null;
}
RPC.prototype.__init_fields__ = RPC__init_fields__;
RPC.quark_behaviors_RPC_ref = quark_md.Root.quark_behaviors_RPC_md;
function RPC_call(args) {
    var result = null;
    (this).instance = ((this).service).getInstance();
    if (((this).instance) !== (null)) {
        var request = new _qrt.HTTPRequest(((this).instance).getURL());
        var json = quark.toJSON(args, null);
        var envelope = new _qrt.JSONObject();
        (envelope).setObjectItem(("$method"), ((new _qrt.JSONObject()).setString((this).methodName)));
        (envelope).setObjectItem(("$context"), ((new _qrt.JSONObject()).setString("TBD")));
        (envelope).setObjectItem(("rpc"), (json));
        var body = (envelope).toString();
        (request).setBody(body);
        (request).setMethod("POST");
        var rpc = new RPCRequest(args, this);
        result = (rpc).call(request);
    } else {
        result = (this.returned).construct([]);
        (result).finish("all services are down");
    }
    quark.concurrent.FutureWait.waitFor(result, 10.0);
    return result;
}
RPC.prototype.call = RPC_call;

function RPC_succeed(info) {
    ((this).instance).succeed(info);
}
RPC.prototype.succeed = RPC_succeed;

function RPC_fail(info) {
    ((this).instance).fail(info);
}
RPC.prototype.fail = RPC_fail;

function RPC_toString() {
    return (((((("RPC ") + (((this).service).getName())) + (" at ")) + (((this).instance).getURL())) + (": ")) + ((this).methodName)) + ("(...)");
}
RPC.prototype.toString = RPC_toString;

function RPC__getClass() {
    return "quark.behaviors.RPC";
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
    if ((name) === ("methodName")) {
        return (this).methodName;
    }
    if ((name) === ("instance")) {
        return (this).instance;
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
    if ((name) === ("methodName")) {
        (this).methodName = value;
    }
    if ((name) === ("instance")) {
        (this).instance = value;
    }
}
RPC.prototype._setField = RPC__setField;

// CLASS RPCRequest

function RPCRequest(args, rpc) {
    this.__init_fields__();
    (this).retval = ((rpc).returned).construct([]);
    (this).args = args;
    (this).timeout = new quark.concurrent.Timeout((rpc).timeout);
    (this).rpc = rpc;
}
exports.RPCRequest = RPCRequest;

function RPCRequest__init_fields__() {
    this.rpc = null;
    this.retval = null;
    this.args = null;
    this.timeout = null;
}
RPCRequest.prototype.__init_fields__ = RPCRequest__init_fields__;
RPCRequest.quark_behaviors_RPCRequest_ref = quark_md.Root.quark_behaviors_RPCRequest_md;
function RPCRequest_call(request) {
    ((this).timeout).start(this);
    (quark.concurrent.Context.runtime()).request(request, this);
    return (this).retval;
}
RPCRequest.prototype.call = RPCRequest_call;

function RPCRequest_onHTTPResponse(rq, response) {
    var info = null;
    ((this).timeout).cancel();
    if (((response).getCode()) !== (200)) {
        info = ((((this).rpc).toString()) + (" failed: Server returned error ")) + (_qrt.toString((response).getCode()));
        ((this).retval).finish(info);
        ((this).rpc).fail(info);
        return;
    }
    var body = (response).getBody();
    var obj = _qrt.json_from_string(body);
    var classname = ((obj).getObjectItem("$class")).getString();
    if ((classname) === (null)) {
        info = (((this).rpc).toString()) + (" failed: Server returned unrecognizable content");
        ((this).retval).finish(info);
        ((this).rpc).fail(info);
        return;
    } else {
        quark.fromJSON(((this).rpc).returned, (this).retval, obj);
        ((this).retval).finish(null);
        ((this).rpc).succeed("Success in the future...");
    }
}
RPCRequest.prototype.onHTTPResponse = RPCRequest_onHTTPResponse;

function RPCRequest_onTimeout(timeout) {
    ((this).retval).finish("request timed out");
    ((this).rpc).fail("request timed out");
}
RPCRequest.prototype.onTimeout = RPCRequest_onTimeout;

function RPCRequest__getClass() {
    return "quark.behaviors.RPCRequest";
}
RPCRequest.prototype._getClass = RPCRequest__getClass;

function RPCRequest__getField(name) {
    if ((name) === ("rpc")) {
        return (this).rpc;
    }
    if ((name) === ("retval")) {
        return (this).retval;
    }
    if ((name) === ("args")) {
        return (this).args;
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
    if ((name) === ("args")) {
        (this).args = value;
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

// CLASS CircuitBreaker

function CircuitBreaker(id, failureLimit, retestDelay) {
    this.__init_fields__();
    (this).id = id;
    (this).failureLimit = failureLimit;
    (this).retestDelay = retestDelay;
}
exports.CircuitBreaker = CircuitBreaker;

function CircuitBreaker__init_fields__() {
    this.id = null;
    this.failureLimit = null;
    this.retestDelay = null;
    this.active = true;
    this.failureCount = 0;
    this.mutex = new _qrt.Lock();
}
CircuitBreaker.prototype.__init_fields__ = CircuitBreaker__init_fields__;
CircuitBreaker.quark_behaviors_CircuitBreaker_ref = quark_md.Root.quark_behaviors_CircuitBreaker_md;
function CircuitBreaker_succeed() {
    ((this).mutex).acquire();
    if (((this).failureCount) > (0)) {
        (quark.Client.logger).info(("- CLOSE breaker on ") + ((this).id));
    }
    (this).failureCount = 0;
    ((this).mutex).release();
}
CircuitBreaker.prototype.succeed = CircuitBreaker_succeed;

function CircuitBreaker_fail() {
    var doSchedule = false;
    ((this).mutex).acquire();
    (this).failureCount = ((this).failureCount) + (1);
    if (((this).failureCount) >= ((this).failureLimit)) {
        (this).active = false;
        doSchedule = true;
        (quark.Client.logger).warn(("- OPEN breaker on ") + ((this).id));
    }
    ((this).mutex).release();
    if (doSchedule) {
        (quark.concurrent.Context.runtime()).schedule(this, (this).retestDelay);
    }
}
CircuitBreaker.prototype.fail = CircuitBreaker_fail;

function CircuitBreaker_onExecute(runtime) {
    ((this).mutex).acquire();
    (this).active = true;
    (quark.Client.logger).warn(("- RETEST breaker on ") + ((this).id));
    ((this).mutex).release();
}
CircuitBreaker.prototype.onExecute = CircuitBreaker_onExecute;

function CircuitBreaker__getClass() {
    return "quark.behaviors.CircuitBreaker";
}
CircuitBreaker.prototype._getClass = CircuitBreaker__getClass;

function CircuitBreaker__getField(name) {
    if ((name) === ("id")) {
        return (this).id;
    }
    if ((name) === ("failureLimit")) {
        return (this).failureLimit;
    }
    if ((name) === ("retestDelay")) {
        return (this).retestDelay;
    }
    if ((name) === ("active")) {
        return (this).active;
    }
    if ((name) === ("failureCount")) {
        return (this).failureCount;
    }
    if ((name) === ("mutex")) {
        return (this).mutex;
    }
    return null;
}
CircuitBreaker.prototype._getField = CircuitBreaker__getField;

function CircuitBreaker__setField(name, value) {
    if ((name) === ("id")) {
        (this).id = value;
    }
    if ((name) === ("failureLimit")) {
        (this).failureLimit = value;
    }
    if ((name) === ("retestDelay")) {
        (this).retestDelay = value;
    }
    if ((name) === ("active")) {
        (this).active = value;
    }
    if ((name) === ("failureCount")) {
        (this).failureCount = value;
    }
    if ((name) === ("mutex")) {
        (this).mutex = value;
    }
}
CircuitBreaker.prototype._setField = CircuitBreaker__setField;
