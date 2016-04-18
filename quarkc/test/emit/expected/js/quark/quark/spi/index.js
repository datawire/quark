var _qrt = require("quark/quark_runtime.js");
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark_md = require('../../quark_md/index.js');
exports.quark_md = quark_md;
var quark = require('../../quark/index.js');
exports.quark = quark;



// CLASS RuntimeSpi
function RuntimeSpi() {
    this.__init_fields__();
}
exports.RuntimeSpi = RuntimeSpi;

function RuntimeSpi__init_fields__() {}
RuntimeSpi.prototype.__init_fields__ = RuntimeSpi__init_fields__;
RuntimeSpi.quark_spi_RuntimeSpi_ref = quark_md.Root.quark_spi_RuntimeSpi_md;

// CLASS ServletProxy

function ServletProxy(real_runtime, servlet_impl) {
    this.__init_fields__();
    (this).real_runtime = real_runtime;
    (this).servlet_impl = servlet_impl;
}
exports.ServletProxy = ServletProxy;

function ServletProxy__init_fields__() {
    this.servlet_impl = null;
    this.real_runtime = null;
}
ServletProxy.prototype.__init_fields__ = ServletProxy__init_fields__;
ServletProxy.quark_spi_ServletProxy_ref = quark_md.Root.quark_spi_ServletProxy_md;
function ServletProxy_onServletInit(url, runtime) {
    (this.servlet_impl).onServletInit(url, this.real_runtime);
}
ServletProxy.prototype.onServletInit = ServletProxy_onServletInit;

function ServletProxy_onServletError(url, error) {
    (this.servlet_impl).onServletError(url, error);
}
ServletProxy.prototype.onServletError = ServletProxy_onServletError;

function ServletProxy_onServletEnd(url) {
    (this.servlet_impl).onServletEnd(url);
}
ServletProxy.prototype.onServletEnd = ServletProxy_onServletEnd;

function ServletProxy__getClass() {
    return "quark.spi.ServletProxy";
}
ServletProxy.prototype._getClass = ServletProxy__getClass;

function ServletProxy__getField(name) {
    if (_qrt.equals((name), ("servlet_impl"))) {
        return (this).servlet_impl;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        return (this).real_runtime;
    }
    return null;
}
ServletProxy.prototype._getField = ServletProxy__getField;

function ServletProxy__setField(name, value) {
    if (_qrt.equals((name), ("servlet_impl"))) {
        (this).servlet_impl = value;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        (this).real_runtime = value;
    }
}
ServletProxy.prototype._setField = ServletProxy__setField;

// CLASS HTTPServletProxy

function HTTPServletProxy(real_runtime, http_servlet_impl) {
    HTTPServletProxy.super_.call(this, real_runtime, http_servlet_impl);
    (this).http_servlet_impl = http_servlet_impl;
}
exports.HTTPServletProxy = HTTPServletProxy;
_qrt.util.inherits(HTTPServletProxy, ServletProxy);

function HTTPServletProxy__init_fields__() {
    ServletProxy.prototype.__init_fields__.call(this);
    this.http_servlet_impl = null;
}
HTTPServletProxy.prototype.__init_fields__ = HTTPServletProxy__init_fields__;
HTTPServletProxy.quark_spi_HTTPServletProxy_ref = quark_md.Root.quark_spi_HTTPServletProxy_md;
function HTTPServletProxy_onHTTPRequest(request, response) {
    (this.http_servlet_impl).onHTTPRequest(request, response);
}
HTTPServletProxy.prototype.onHTTPRequest = HTTPServletProxy_onHTTPRequest;

function HTTPServletProxy__getClass() {
    return "quark.spi.HTTPServletProxy";
}
HTTPServletProxy.prototype._getClass = HTTPServletProxy__getClass;

function HTTPServletProxy__getField(name) {
    if (_qrt.equals((name), ("servlet_impl"))) {
        return (this).servlet_impl;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        return (this).real_runtime;
    }
    if (_qrt.equals((name), ("http_servlet_impl"))) {
        return (this).http_servlet_impl;
    }
    return null;
}
HTTPServletProxy.prototype._getField = HTTPServletProxy__getField;

function HTTPServletProxy__setField(name, value) {
    if (_qrt.equals((name), ("servlet_impl"))) {
        (this).servlet_impl = value;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        (this).real_runtime = value;
    }
    if (_qrt.equals((name), ("http_servlet_impl"))) {
        (this).http_servlet_impl = value;
    }
}
HTTPServletProxy.prototype._setField = HTTPServletProxy__setField;

function HTTPServletProxy_serveHTTP(url) {
    (quark.concurrent.Context.runtime()).serveHTTP(url, this);
}
HTTPServletProxy.prototype.serveHTTP = HTTPServletProxy_serveHTTP;

// CLASS WSServletProxy

function WSServletProxy(real_runtime, ws_servlet_impl) {
    WSServletProxy.super_.call(this, real_runtime, ws_servlet_impl);
    (this).ws_servlet_impl = ws_servlet_impl;
}
exports.WSServletProxy = WSServletProxy;
_qrt.util.inherits(WSServletProxy, ServletProxy);

function WSServletProxy__init_fields__() {
    ServletProxy.prototype.__init_fields__.call(this);
    this.ws_servlet_impl = null;
}
WSServletProxy.prototype.__init_fields__ = WSServletProxy__init_fields__;
WSServletProxy.quark_spi_WSServletProxy_ref = quark_md.Root.quark_spi_WSServletProxy_md;
function WSServletProxy_onWSConnect(upgradeRequest) {
    return (this.ws_servlet_impl).onWSConnect(upgradeRequest);
}
WSServletProxy.prototype.onWSConnect = WSServletProxy_onWSConnect;

function WSServletProxy__getClass() {
    return "quark.spi.WSServletProxy";
}
WSServletProxy.prototype._getClass = WSServletProxy__getClass;

function WSServletProxy__getField(name) {
    if (_qrt.equals((name), ("servlet_impl"))) {
        return (this).servlet_impl;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        return (this).real_runtime;
    }
    if (_qrt.equals((name), ("ws_servlet_impl"))) {
        return (this).ws_servlet_impl;
    }
    return null;
}
WSServletProxy.prototype._getField = WSServletProxy__getField;

function WSServletProxy__setField(name, value) {
    if (_qrt.equals((name), ("servlet_impl"))) {
        (this).servlet_impl = value;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        (this).real_runtime = value;
    }
    if (_qrt.equals((name), ("ws_servlet_impl"))) {
        (this).ws_servlet_impl = value;
    }
}
WSServletProxy.prototype._setField = WSServletProxy__setField;

function WSServletProxy_serveWS(url) {
    (quark.concurrent.Context.runtime()).serveWS(url, this);
}
WSServletProxy.prototype.serveWS = WSServletProxy_serveWS;

// CLASS TaskProxy

function TaskProxy(real_runtime, task_impl) {
    this.__init_fields__();
    (this).task_impl = task_impl;
    (this).real_runtime = real_runtime;
}
exports.TaskProxy = TaskProxy;

function TaskProxy__init_fields__() {
    this.task_impl = null;
    this.real_runtime = null;
}
TaskProxy.prototype.__init_fields__ = TaskProxy__init_fields__;
TaskProxy.quark_spi_TaskProxy_ref = quark_md.Root.quark_spi_TaskProxy_md;
function TaskProxy_onExecute(runtime) {
    (this.task_impl).onExecute(this.real_runtime);
}
TaskProxy.prototype.onExecute = TaskProxy_onExecute;

function TaskProxy__getClass() {
    return "quark.spi.TaskProxy";
}
TaskProxy.prototype._getClass = TaskProxy__getClass;

function TaskProxy__getField(name) {
    if (_qrt.equals((name), ("task_impl"))) {
        return (this).task_impl;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        return (this).real_runtime;
    }
    return null;
}
TaskProxy.prototype._getField = TaskProxy__getField;

function TaskProxy__setField(name, value) {
    if (_qrt.equals((name), ("task_impl"))) {
        (this).task_impl = value;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        (this).real_runtime = value;
    }
}
TaskProxy.prototype._setField = TaskProxy__setField;

// CLASS RuntimeApi

function RuntimeApi(impl) {
    this.__init_fields__();
    (this).impl = impl;
}
exports.RuntimeApi = RuntimeApi;

function RuntimeApi__init_fields__() {
    this.impl = null;
}
RuntimeApi.prototype.__init_fields__ = RuntimeApi__init_fields__;
RuntimeApi.quark_spi_RuntimeApi_ref = quark_md.Root.quark_spi_RuntimeApi_md;
function RuntimeApi_open(url, handler) {
    (this.impl).open(url, handler);
}
RuntimeApi.prototype.open = RuntimeApi_open;

function RuntimeApi_request(request, handler) {
    (this.impl).request(request, handler);
}
RuntimeApi.prototype.request = RuntimeApi_request;

function RuntimeApi_schedule(handler, delayInSeconds) {
    (this.impl).schedule(new TaskProxy(this, handler), delayInSeconds);
}
RuntimeApi.prototype.schedule = RuntimeApi_schedule;

function RuntimeApi_codec() {
    return (this.impl).codec();
}
RuntimeApi.prototype.codec = RuntimeApi_codec;

function RuntimeApi_serveHTTP(url, servlet) {
    (this.impl).serveHTTP(url, new HTTPServletProxy(this, servlet));
}
RuntimeApi.prototype.serveHTTP = RuntimeApi_serveHTTP;

function RuntimeApi_serveWS(url, servlet) {
    (this.impl).serveWS(url, new WSServletProxy(this, servlet));
}
RuntimeApi.prototype.serveWS = RuntimeApi_serveWS;

function RuntimeApi_respond(request, response) {
    (this.impl).respond(request, response);
}
RuntimeApi.prototype.respond = RuntimeApi_respond;

function RuntimeApi_fail(message) {
    (this.impl).fail(message);
}
RuntimeApi.prototype.fail = RuntimeApi_fail;

function RuntimeApi_logger(topic) {
    return (this.impl).logger(topic);
}
RuntimeApi.prototype.logger = RuntimeApi_logger;

function RuntimeApi__getClass() {
    return "quark.spi.RuntimeApi";
}
RuntimeApi.prototype._getClass = RuntimeApi__getClass;

function RuntimeApi__getField(name) {
    if (_qrt.equals((name), ("impl"))) {
        return (this).impl;
    }
    return null;
}
RuntimeApi.prototype._getField = RuntimeApi__getField;

function RuntimeApi__setField(name, value) {
    if (_qrt.equals((name), ("impl"))) {
        (this).impl = value;
    }
}
RuntimeApi.prototype._setField = RuntimeApi__setField;

// CLASS RuntimeFactory
function RuntimeFactory() {
    this.__init_fields__();
}
exports.RuntimeFactory = RuntimeFactory;

function RuntimeFactory__init_fields__() {}
RuntimeFactory.prototype.__init_fields__ = RuntimeFactory__init_fields__;
RuntimeFactory.factory = new RuntimeFactory();
RuntimeFactory.quark_spi_RuntimeFactory_ref = quark_md.Root.quark_spi_RuntimeFactory_md;
function RuntimeFactory_makeRuntime() {
    var spi = _qrt.RuntimeFactory.create();
    var api = new RuntimeApi(spi);
    return api;
}
RuntimeFactory.prototype.makeRuntime = RuntimeFactory_makeRuntime;

function RuntimeFactory__getClass() {
    return "quark.spi.RuntimeFactory";
}
RuntimeFactory.prototype._getClass = RuntimeFactory__getClass;

function RuntimeFactory__getField(name) {
    if (_qrt.equals((name), ("factory"))) {
        return RuntimeFactory.factory;
    }
    return null;
}
RuntimeFactory.prototype._getField = RuntimeFactory__getField;

function RuntimeFactory__setField(name, value) {
    if (_qrt.equals((name), ("factory"))) {
        RuntimeFactory.factory = value;
    }
}
RuntimeFactory.prototype._setField = RuntimeFactory__setField;
