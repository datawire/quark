var _qrt = require("quark/quark_runtime.js");
var reflect = require('./reflect/index.js');
exports.reflect = reflect;
var behaviors = require('./behaviors/index.js');
exports.behaviors = behaviors;
var quark_md = require('../quark_md/index.js');
exports.quark_md = quark_md;
var concurrent = require('./concurrent/index.js');
exports.concurrent = concurrent;
var test = require('./test/index.js');
exports.test = test;







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
    if (((cls).name) === ("quark.String")) {
        (result).setString(obj);
        return result;
    }
    if (((((((cls).name) === ("quark.byte")) || (((cls).name) === ("quark.short"))) || (((cls).name) === ("quark.int"))) || (((cls).name) === ("quark.long"))) || (((cls).name) === ("quark.float"))) {
        (result).setNumber(obj);
        return result;
    }
    if (((cls).name) === ("quark.List")) {
        (result).setList();
        var list = obj;
        while ((idx) < ((list).length)) {
            (result).setListItem(idx, toJSON((list)[idx], null));
            idx = (idx) + (1);
        }
        return result;
    }
    if (((cls).name) === ("quark.Map")) {
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
function fromJSON(cls, result, json) {
    if (((json) === (null)) || ((json).isNull())) {
        return null;
    }
    var idx = 0;
    if ((result) === (null)) {
        if (((cls).name) === ("quark.String")) {
            var s = (json).getString();
            return s;
        }
        if (((cls).name) === ("quark.float")) {
            var flt = (json).getNumber();
            return flt;
        }
        if (((cls).name) === ("quark.int")) {
            var i = Math.round((json).getNumber());
            return i;
        }
        if (((cls).name) === ("quark.bool")) {
            var b = (json).getBool();
            return b;
        }
        result = (cls).construct([]);
    }
    if (((cls).name) === ("quark.List")) {
        var list = result;
        while ((idx) < ((json).size())) {
            (list).push(fromJSON(((cls).getParameters())[0], null, (json).getListItem(idx)));
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
        if (!(((json).getObjectItem((f).name)).isNull())) {
            (result)._setField(((f).name), (fromJSON((f).getType(), null, (json).getObjectItem((f).name))));
        }
    }
    return result;
}
exports.fromJSON = fromJSON;


// CLASS Resolver
function Resolver() {
    this.__init_fields__();
}
exports.Resolver = Resolver;

function Resolver__init_fields__() {}
Resolver.prototype.__init_fields__ = Resolver__init_fields__;
Resolver.quark_Resolver_ref = quark_md.Root.quark_Resolver_md;
function Resolver_resolve(serviceName) { /* interface */ }
Resolver.prototype.resolve = Resolver_resolve;

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
ResponseHolder.quark_ResponseHolder_ref = quark_md.Root.quark_ResponseHolder_md;
function ResponseHolder_onHTTPResponse(request, response) {
    (this).response = response;
}
ResponseHolder.prototype.onHTTPResponse = ResponseHolder_onHTTPResponse;

function ResponseHolder_onHTTPError(request, message) {
    this.failure = message;
}
ResponseHolder.prototype.onHTTPError = ResponseHolder_onHTTPError;

function ResponseHolder__getClass() {
    return "quark.ResponseHolder";
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
Service.quark_Service_ref = quark_md.Root.quark_Service_md;
function Service_getName() { /* interface */ }
Service.prototype.getName = Service_getName;

function Service_getInstance() { /* interface */ }
Service.prototype.getInstance = Service_getInstance;

function Service_getTimeout() { /* interface */ }
Service.prototype.getTimeout = Service_getTimeout;

function Service_rpc(methodName, args) {
    var rpc = new behaviors.RPC(this, methodName);
    return (rpc).call(args);
}
Service.prototype.rpc = Service_rpc;

// CLASS BaseService
function BaseService() {
    this.__init_fields__();
}
exports.BaseService = BaseService;

function BaseService__init_fields__() {}
BaseService.prototype.__init_fields__ = BaseService__init_fields__;
BaseService.quark_BaseService_ref = quark_md.Root.quark_BaseService_md;
function BaseService_getName() {
    return null;
}
BaseService.prototype.getName = BaseService_getName;

function BaseService_getInstance() {
    return null;
}
BaseService.prototype.getInstance = BaseService_getInstance;

function BaseService_getTimeout() {
    return -(1.0);
}
BaseService.prototype.getTimeout = BaseService_getTimeout;

function BaseService__getClass() {
    return "quark.BaseService";
}
BaseService.prototype._getClass = BaseService__getClass;

function BaseService__getField(name) {
    return null;
}
BaseService.prototype._getField = BaseService__getField;

function BaseService__setField(name, value) {}
BaseService.prototype._setField = BaseService__setField;

function BaseService_rpc(methodName, args) {
    var rpc = new behaviors.RPC(this, methodName);
    return (rpc).call(args);
}
BaseService.prototype.rpc = BaseService_rpc;

// CLASS ServiceInstance

function ServiceInstance(serviceName, url, failureLimit, retestDelay) {
    this.__init_fields__();
    (this).serviceName = serviceName;
    (this).url = url;
    (this).breaker = new behaviors.CircuitBreaker((((("[") + (serviceName)) + (" at ")) + (url)) + ("]"), failureLimit, retestDelay);
}
exports.ServiceInstance = ServiceInstance;

function ServiceInstance__init_fields__() {
    this.serviceName = null;
    this.url = null;
    this.breaker = null;
}
ServiceInstance.prototype.__init_fields__ = ServiceInstance__init_fields__;
ServiceInstance.quark_ServiceInstance_ref = quark_md.Root.quark_ServiceInstance_md;
function ServiceInstance_isActive() {
    return ((this).breaker).active;
}
ServiceInstance.prototype.isActive = ServiceInstance_isActive;

function ServiceInstance_getURL() {
    return (this).url;
}
ServiceInstance.prototype.getURL = ServiceInstance_getURL;

function ServiceInstance_succeed(info) {
    if (!((this).isActive())) {
        (Client.logger).info(((("- CLOSE breaker for ") + ((this).serviceName)) + (" at ")) + ((this).url));
    }
    ((this).breaker).succeed();
}
ServiceInstance.prototype.succeed = ServiceInstance_succeed;

function ServiceInstance_fail(info) {
    if (!((this).isActive())) {
        (Client.logger).warn(((("- OPEN breaker for ") + ((this).serviceName)) + (" at ")) + ((this).url));
    }
    ((this).breaker).fail();
}
ServiceInstance.prototype.fail = ServiceInstance_fail;

function ServiceInstance__getClass() {
    return "quark.ServiceInstance";
}
ServiceInstance.prototype._getClass = ServiceInstance__getClass;

function ServiceInstance__getField(name) {
    if ((name) === ("serviceName")) {
        return (this).serviceName;
    }
    if ((name) === ("url")) {
        return (this).url;
    }
    if ((name) === ("breaker")) {
        return (this).breaker;
    }
    return null;
}
ServiceInstance.prototype._getField = ServiceInstance__getField;

function ServiceInstance__setField(name, value) {
    if ((name) === ("serviceName")) {
        (this).serviceName = value;
    }
    if ((name) === ("url")) {
        (this).url = value;
    }
    if ((name) === ("breaker")) {
        (this).breaker = value;
    }
}
ServiceInstance.prototype._setField = ServiceInstance__setField;

// CLASS DegenerateResolver
/**
 * DegenerateResolver assumes that the serviceName is an URL.
 */
function DegenerateResolver() {
    this.__init_fields__();
}
exports.DegenerateResolver = DegenerateResolver;

function DegenerateResolver__init_fields__() {}
DegenerateResolver.prototype.__init_fields__ = DegenerateResolver__init_fields__;
DegenerateResolver.quark_DegenerateResolver_ref = quark_md.Root.quark_DegenerateResolver_md;
function DegenerateResolver_resolve(serviceName) {
    return [serviceName];
}
DegenerateResolver.prototype.resolve = DegenerateResolver_resolve;

function DegenerateResolver__getClass() {
    return "quark.DegenerateResolver";
}
DegenerateResolver.prototype._getClass = DegenerateResolver__getClass;

function DegenerateResolver__getField(name) {
    return null;
}
DegenerateResolver.prototype._getField = DegenerateResolver__getField;

function DegenerateResolver__setField(name, value) {}
DegenerateResolver.prototype._setField = DegenerateResolver__setField;

// CLASS Client

function Client(serviceName) {
    this.__init_fields__();
    (this).serviceName = serviceName;
    (this).resolver = new DegenerateResolver();
    (this)._timeout = 0.0;
    (this).mutex = new _qrt.Lock();
    (this).instanceMap = new Map([]);
    (this).counter = 0;
    var failureLimit = (this)._getField("failureLimit");
    if ((failureLimit) !== (null)) {
        (this)._failureLimit = failureLimit;
    }
    (Client.logger).info((((this).toString()) + (" failureLimit ")) + (_qrt.toString((this)._failureLimit)));
    var retestDelay = (this)._getField("retestDelay");
    if ((retestDelay) !== (null)) {
        (this)._retestDelay = retestDelay;
    }
    (Client.logger).info((((this).toString()) + (" retestDelay ")) + (_qrt.toString((this)._retestDelay)));
}
exports.Client = Client;

function Client__init_fields__() {
    this.resolver = null;
    this.serviceName = null;
    this._timeout = null;
    this._failureLimit = 3;
    this._retestDelay = 30.0;
    this.mutex = null;
    this.instanceMap = null;
    this.counter = null;
}
Client.prototype.__init_fields__ = Client__init_fields__;
Client.logger = (concurrent.Context.runtime()).logger("quark.client");
Client.quark_Map_quark_String_quark_ServiceInstance__ref = quark_md.Root.quark_Map_quark_String_quark_ServiceInstance__md;
Client.quark_Client_ref = quark_md.Root.quark_Client_md;
function Client_setResolver(resolver) {
    (this).resolver = resolver;
}
Client.prototype.setResolver = Client_setResolver;

function Client_getInstance() {
    var urls = ((this).resolver).resolve((this).serviceName);
    if (((urls).length) <= (0)) {
        return null;
    }
    (urls).sort();
    ((this).mutex).acquire();
    var result = null;
    var next = _qrt.modulo(((this).counter), ((urls).length));
    (this).counter = ((this).counter) + (1);
    var idx = next;
    while (true) {
        var url = (urls)[idx];
        var instance = _qrt.map_get(((this).instanceMap), (url));
        if ((instance) === (null)) {
            instance = new ServiceInstance((this).serviceName, url, this._failureLimit, this._retestDelay);
            ((this).instanceMap).set((url), (instance));
        }
        if ((instance).isActive()) {
            (Client.logger).info(((((("- ") + ((this).serviceName)) + (" using instance ")) + (_qrt.toString((idx) + (1)))) + (": ")) + (url));
            result = instance;
            break;
        }
        idx = _qrt.modulo(((idx) + (1)), ((urls).length));
        if ((idx) === (next)) {
            (Client.logger).info((("- ") + ((this).serviceName)) + (": no live instances! giving up."));
            break;
        }
    }
    ((this).mutex).release();
    return result;
}
Client.prototype.getInstance = Client_getInstance;

function Client_getName() {
    return (this).serviceName;
}
Client.prototype.getName = Client_getName;

function Client_getTimeout() {
    return (this)._timeout;
}
Client.prototype.getTimeout = Client_getTimeout;

function Client_setTimeout(timeout) {
    (this)._timeout = timeout;
}
Client.prototype.setTimeout = Client_setTimeout;

function Client__getClass() {
    return "quark.Client";
}
Client.prototype._getClass = Client__getClass;

function Client__getField(name) {
    if ((name) === ("logger")) {
        return Client.logger;
    }
    if ((name) === ("resolver")) {
        return (this).resolver;
    }
    if ((name) === ("serviceName")) {
        return (this).serviceName;
    }
    if ((name) === ("_timeout")) {
        return (this)._timeout;
    }
    if ((name) === ("_failureLimit")) {
        return (this)._failureLimit;
    }
    if ((name) === ("_retestDelay")) {
        return (this)._retestDelay;
    }
    if ((name) === ("mutex")) {
        return (this).mutex;
    }
    if ((name) === ("instanceMap")) {
        return (this).instanceMap;
    }
    if ((name) === ("counter")) {
        return (this).counter;
    }
    return null;
}
Client.prototype._getField = Client__getField;

function Client__setField(name, value) {
    if ((name) === ("logger")) {
        Client.logger = value;
    }
    if ((name) === ("resolver")) {
        (this).resolver = value;
    }
    if ((name) === ("serviceName")) {
        (this).serviceName = value;
    }
    if ((name) === ("_timeout")) {
        (this)._timeout = value;
    }
    if ((name) === ("_failureLimit")) {
        (this)._failureLimit = value;
    }
    if ((name) === ("_retestDelay")) {
        (this)._retestDelay = value;
    }
    if ((name) === ("mutex")) {
        (this).mutex = value;
    }
    if ((name) === ("instanceMap")) {
        (this).instanceMap = value;
    }
    if ((name) === ("counter")) {
        (this).counter = value;
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
ServerResponder.quark_ServerResponder_ref = quark_md.Root.quark_ServerResponder_md;
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
    return "quark.ServerResponder";
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
Server.quark_Server_quark_Object__ref = quark_md.Root.quark_Server_quark_Object__md;
function Server_onHTTPRequest(request, response) {
    var body = (request).getBody();
    var envelope = _qrt.json_from_string(body);
    if ((((envelope).getObjectItem("$method")) === ((envelope).undefined())) || (((envelope).getObjectItem("rpc")) === ((envelope).undefined()))) {
        (response).setBody((("Failed to understand request.\n\n") + (body)) + ("\n"));
        (response).setCode(400);
        (concurrent.Context.runtime()).respond(request, response);
    } else {
        var methodName = ((envelope).getObjectItem("$method")).getString();
        var json = (envelope).getObjectItem("rpc");
        var method = (((reflect.Class.get(_qrt._getClass(this))).getField("impl")).getType()).getMethod(methodName);
        var params = (method).getParameters();
        var args = [];
        var idx = 0;
        while ((idx) < ((params).length)) {
            (args).push(fromJSON((params)[idx], null, (json).getListItem(idx)));
            idx = (idx) + (1);
        }
        var result = (method).invoke(this.impl, args);
        (result).onFinished(new ServerResponder(request, response));
    }
}
Server.prototype.onHTTPRequest = Server_onHTTPRequest;

function Server_onServletError(url, message) {
    (concurrent.Context.runtime()).fail(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message));
}
Server.prototype.onServletError = Server_onServletError;

function Server__getClass() {
    return "quark.Server<quark.Object>";
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



