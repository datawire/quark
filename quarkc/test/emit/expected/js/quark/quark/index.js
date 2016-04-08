var _qrt = require("quark/quark_runtime.js");
var reflect = require('./reflect/index.js');
exports.reflect = reflect;
var quark_md = require('../quark_md/index.js');
exports.quark_md = quark_md;
var logging = require('./logging/index.js');
exports.logging = logging;
var behaviors = require('./behaviors/index.js');
exports.behaviors = behaviors;
var concurrent = require('./concurrent/index.js');
exports.concurrent = concurrent;
var test = require('./test/index.js');
exports.test = test;




// CLASS ListUtil
function ListUtil() {
    this.__init_fields__();
}
exports.ListUtil = ListUtil;

function ListUtil__init_fields__() {}
ListUtil.prototype.__init_fields__ = ListUtil__init_fields__;
ListUtil.quark_List_quark_Object__ref = quark_md.Root.quark_List_quark_Object__md;
function ListUtil_slice(list, start, stop) {
    var result = [];
    if ((start) >= ((list).length)) {
        start = (list).length;
    } else {
        start = _qrt.modulo((start), ((list).length));
    }
    if ((stop) >= ((list).length)) {
        stop = (list).length;
    } else {
        stop = _qrt.modulo((stop), ((list).length));
    }
    var idx = start;
    while ((idx) < (stop)) {
        (result).push((list)[idx]);
        idx = (idx) + (1);
    }
    return result;
}
ListUtil.prototype.slice = ListUtil_slice;

function ListUtil__getClass() {
    return "quark.ListUtil<quark.Object>";
}
ListUtil.prototype._getClass = ListUtil__getClass;

function ListUtil__getField(name) {
    return null;
}
ListUtil.prototype._getField = ListUtil__getField;

function ListUtil__setField(name, value) {}
ListUtil.prototype._setField = ListUtil__setField;




/**
 * Serializes object tree into JSON. skips over fields starting with underscore
 */
function toJSON(obj, cls) {
    var result = new _qrt.JSONObject();
    if (_qrt.equals((obj), (null))) {
        (result).setNull();
        return result;
    }
    if (_qrt.equals((cls), (null))) {
        cls = reflect.Class.get(_qrt._getClass(obj));
    }
    var idx = 0;
    if (_qrt.equals(((cls).name), ("quark.String"))) {
        (result).setString(obj);
        return result;
    }
    if (((((_qrt.equals(((cls).name), ("quark.byte"))) || (_qrt.equals(((cls).name), ("quark.short")))) || (_qrt.equals(((cls).name), ("quark.int")))) || (_qrt.equals(((cls).name), ("quark.long")))) || (_qrt.equals(((cls).name), ("quark.float")))) {
        (result).setNumber(obj);
        return result;
    }
    if (_qrt.equals(((cls).name), ("quark.List"))) {
        (result).setList();
        var list = obj;
        while ((idx) < ((list).length)) {
            (result).setListItem(idx, toJSON((list)[idx], null));
            idx = (idx) + (1);
        }
        return result;
    }
    if (_qrt.equals(((cls).name), ("quark.Map"))) {
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
    if ((_qrt.equals((json), (null))) || ((json).isNull())) {
        return null;
    }
    var idx = 0;
    if (_qrt.equals((result), (null))) {
        if (_qrt.equals(((cls).name), ("quark.String"))) {
            var s = (json).getString();
            return s;
        }
        if (_qrt.equals(((cls).name), ("quark.float"))) {
            var flt = (json).getNumber();
            return flt;
        }
        if (_qrt.equals(((cls).name), ("quark.int"))) {
            var i = Math.round((json).getNumber());
            return i;
        }
        if (_qrt.equals(((cls).name), ("quark.bool"))) {
            var b = (json).getBool();
            return b;
        }
        result = (cls).construct([]);
    }
    if (_qrt.equals(((cls).name), ("quark.List"))) {
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
    if (_qrt.equals((name), ("response"))) {
        return (this).response;
    }
    if (_qrt.equals((name), ("failure"))) {
        return (this).failure;
    }
    return null;
}
ResponseHolder.prototype._getField = ResponseHolder__getField;

function ResponseHolder__setField(name, value) {
    if (_qrt.equals((name), ("response"))) {
        (this).response = value;
    }
    if (_qrt.equals((name), ("failure"))) {
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
    if (_qrt.equals((name), ("serviceName"))) {
        return (this).serviceName;
    }
    if (_qrt.equals((name), ("url"))) {
        return (this).url;
    }
    if (_qrt.equals((name), ("breaker"))) {
        return (this).breaker;
    }
    return null;
}
ServiceInstance.prototype._getField = ServiceInstance__getField;

function ServiceInstance__setField(name, value) {
    if (_qrt.equals((name), ("serviceName"))) {
        (this).serviceName = value;
    }
    if (_qrt.equals((name), ("url"))) {
        (this).url = value;
    }
    if (_qrt.equals((name), ("breaker"))) {
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
    (Client.logger).info(((_qrt.toString(this)) + (" failureLimit ")) + (_qrt.toString((this)._failureLimit)));
    var retestDelay = (this)._getField("retestDelay");
    if ((retestDelay) !== (null)) {
        (this)._retestDelay = retestDelay;
    }
    (Client.logger).info(((_qrt.toString(this)) + (" retestDelay ")) + (_qrt.toString((this)._retestDelay)));
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
        if (_qrt.equals((instance), (null))) {
            instance = new ServiceInstance((this).serviceName, url, this._failureLimit, this._retestDelay);
            ((this).instanceMap).set((url), (instance));
        }
        if ((instance).isActive()) {
            (Client.logger).info(((((("- ") + ((this).serviceName)) + (" using instance ")) + (_qrt.toString((idx) + (1)))) + (": ")) + (url));
            result = instance;
            break;
        }
        idx = _qrt.modulo(((idx) + (1)), ((urls).length));
        if (_qrt.equals((idx), (next))) {
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
    if (_qrt.equals((name), ("logger"))) {
        return Client.logger;
    }
    if (_qrt.equals((name), ("resolver"))) {
        return (this).resolver;
    }
    if (_qrt.equals((name), ("serviceName"))) {
        return (this).serviceName;
    }
    if (_qrt.equals((name), ("_timeout"))) {
        return (this)._timeout;
    }
    if (_qrt.equals((name), ("_failureLimit"))) {
        return (this)._failureLimit;
    }
    if (_qrt.equals((name), ("_retestDelay"))) {
        return (this)._retestDelay;
    }
    if (_qrt.equals((name), ("mutex"))) {
        return (this).mutex;
    }
    if (_qrt.equals((name), ("instanceMap"))) {
        return (this).instanceMap;
    }
    if (_qrt.equals((name), ("counter"))) {
        return (this).counter;
    }
    return null;
}
Client.prototype._getField = Client__getField;

function Client__setField(name, value) {
    if (_qrt.equals((name), ("logger"))) {
        Client.logger = value;
    }
    if (_qrt.equals((name), ("resolver"))) {
        (this).resolver = value;
    }
    if (_qrt.equals((name), ("serviceName"))) {
        (this).serviceName = value;
    }
    if (_qrt.equals((name), ("_timeout"))) {
        (this)._timeout = value;
    }
    if (_qrt.equals((name), ("_failureLimit"))) {
        (this)._failureLimit = value;
    }
    if (_qrt.equals((name), ("_retestDelay"))) {
        (this)._retestDelay = value;
    }
    if (_qrt.equals((name), ("mutex"))) {
        (this).mutex = value;
    }
    if (_qrt.equals((name), ("instanceMap"))) {
        (this).instanceMap = value;
    }
    if (_qrt.equals((name), ("counter"))) {
        (this).counter = value;
    }
}
Client.prototype._setField = Client__setField;

// CLASS ServerResponder

function ServerResponder(sendCORS, request, response) {
    this.__init_fields__();
    (this).sendCORS = sendCORS;
    (this).request = request;
    (this).response = response;
}
exports.ServerResponder = ServerResponder;

function ServerResponder__init_fields__() {
    this.sendCORS = null;
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
        if ((this).sendCORS) {
            ((this).response).setHeader("Access-Control-Allow-Origin", "*");
        }
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
    if (_qrt.equals((name), ("sendCORS"))) {
        return (this).sendCORS;
    }
    if (_qrt.equals((name), ("request"))) {
        return (this).request;
    }
    if (_qrt.equals((name), ("response"))) {
        return (this).response;
    }
    return null;
}
ServerResponder.prototype._getField = ServerResponder__getField;

function ServerResponder__setField(name, value) {
    if (_qrt.equals((name), ("sendCORS"))) {
        (this).sendCORS = value;
    }
    if (_qrt.equals((name), ("request"))) {
        (this).request = value;
    }
    if (_qrt.equals((name), ("response"))) {
        (this).response = value;
    }
}
ServerResponder.prototype._setField = ServerResponder__setField;

// CLASS Server

function Server(impl) {
    this.__init_fields__();
    (this).impl = impl;
    (this)._sendCORS = false;
}
exports.Server = Server;

function Server__init_fields__() {
    this.impl = null;
    this._sendCORS = null;
}
Server.prototype.__init_fields__ = Server__init_fields__;
Server.quark_Server_quark_Object__ref = quark_md.Root.quark_Server_quark_Object__md;
function Server_sendCORS(send) {
    (this)._sendCORS = send;
}
Server.prototype.sendCORS = Server_sendCORS;

function Server_onHTTPRequest(request, response) {
    var body = (request).getBody();
    var envelope = _qrt.json_from_string(body);
    if ((_qrt.equals(((envelope).getObjectItem("$method")), ((envelope).undefined()))) || (_qrt.equals(((envelope).getObjectItem("rpc")), ((envelope).undefined())))) {
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
        (result).onFinished(new ServerResponder((this)._sendCORS, request, response));
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
    if (_qrt.equals((name), ("impl"))) {
        return (this).impl;
    }
    if (_qrt.equals((name), ("_sendCORS"))) {
        return (this)._sendCORS;
    }
    return null;
}
Server.prototype._getField = Server__getField;

function Server__setField(name, value) {
    if (_qrt.equals((name), ("impl"))) {
        (this).impl = value;
    }
    if (_qrt.equals((name), ("_sendCORS"))) {
        (this)._sendCORS = value;
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






// CLASS URL
/**
 * A URL class.
 */
function URL() {
    this.__init_fields__();
}
exports.URL = URL;

function URL__init_fields__() {
    this.scheme = null;
    this.host = null;
    this.port = null;
    this.path = null;
}
URL.prototype.__init_fields__ = URL__init_fields__;
URL.quark_URL_ref = quark_md.Root.quark_URL_md;
function URL_parse(url) {
    var result = new URL();
    if (_qrt.equals((url), (null))) {
        return null;
    }
    var parts = null;
    var remaining = null;
    var idx = (url).indexOf("://");
    if ((idx) >= (0)) {
        (result).scheme = (url).substring((0), (idx));
        remaining = (url).substring(((idx) + (3)), ((url).length));
    } else {
        remaining = url;
    }
    var firstSlash = (remaining).indexOf("/");
    if (_qrt.equals((firstSlash), (0))) {
        (result).path = remaining;
        return result;
    }
    if ((firstSlash) < (0)) {
        firstSlash = (remaining).length;
    } else {
        (result).path = (remaining).substring((firstSlash), ((remaining).length));
    }
    idx = (remaining).indexOf(":");
    if ((idx) > (firstSlash)) {
        (result).host = (remaining).substring((0), (firstSlash));
    } else {
        if ((idx) >= (0)) {
            (result).host = (remaining).substring((0), (idx));
            (result).port = (remaining).substring(((idx) + (1)), (firstSlash));
        } else {
            (result).host = (remaining).substring((0), (firstSlash));
        }
    }
    return result;
}
URL.parse = URL_parse;

function URL_toString() {
    var result = "";
    if ((this.scheme) !== (null)) {
        result = (this.scheme) + ("://");
    }
    if ((this.host) !== (null)) {
        result = (result) + (this.host);
    }
    if ((this.port) !== (null)) {
        result = ((result) + (":")) + (this.port);
    }
    if ((this.path) !== (null)) {
        result = (result) + (this.path);
    }
    return result;
}
URL.prototype.toString = URL_toString;

function URL__getClass() {
    return "quark.URL";
}
URL.prototype._getClass = URL__getClass;

function URL__getField(name) {
    if (_qrt.equals((name), ("scheme"))) {
        return (this).scheme;
    }
    if (_qrt.equals((name), ("host"))) {
        return (this).host;
    }
    if (_qrt.equals((name), ("port"))) {
        return (this).port;
    }
    if (_qrt.equals((name), ("path"))) {
        return (this).path;
    }
    return null;
}
URL.prototype._getField = URL__getField;

function URL__setField(name, value) {
    if (_qrt.equals((name), ("scheme"))) {
        (this).scheme = value;
    }
    if (_qrt.equals((name), ("host"))) {
        (this).host = value;
    }
    if (_qrt.equals((name), ("port"))) {
        (this).port = value;
    }
    if (_qrt.equals((name), ("path"))) {
        (this).path = value;
    }
}
URL.prototype._setField = URL__setField;
