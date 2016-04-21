var _qrt = require("quark/quark_runtime.js");
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark_md = require('../../quark_md/index.js');
exports.quark_md = quark_md;
var quark = require('../../quark/index.js');
exports.quark = quark;



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
ServletProxy.quark_spi_api_ServletProxy_ref = quark_md.Root.quark_spi_api_ServletProxy_md;
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
    return "quark.spi_api.ServletProxy";
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
HTTPServletProxy.quark_spi_api_HTTPServletProxy_ref = quark_md.Root.quark_spi_api_HTTPServletProxy_md;
function HTTPServletProxy_onHTTPRequest(request, response) {
    (this.http_servlet_impl).onHTTPRequest(request, response);
}
HTTPServletProxy.prototype.onHTTPRequest = HTTPServletProxy_onHTTPRequest;

function HTTPServletProxy__getClass() {
    return "quark.spi_api.HTTPServletProxy";
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
WSServletProxy.quark_spi_api_WSServletProxy_ref = quark_md.Root.quark_spi_api_WSServletProxy_md;
function WSServletProxy_onWSConnect(upgradeRequest) {
    return (this.ws_servlet_impl).onWSConnect(upgradeRequest);
}
WSServletProxy.prototype.onWSConnect = WSServletProxy_onWSConnect;

function WSServletProxy__getClass() {
    return "quark.spi_api.WSServletProxy";
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
TaskProxy.quark_spi_api_TaskProxy_ref = quark_md.Root.quark_spi_api_TaskProxy_md;
function TaskProxy_onExecute(runtime) {
    (this.task_impl).onExecute(this.real_runtime);
}
TaskProxy.prototype.onExecute = TaskProxy_onExecute;

function TaskProxy__getClass() {
    return "quark.spi_api.TaskProxy";
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

// CLASS RuntimeProxy

function RuntimeProxy(impl) {
    this.__init_fields__();
    (this).impl = impl;
}
exports.RuntimeProxy = RuntimeProxy;

function RuntimeProxy__init_fields__() {
    this.impl = null;
}
RuntimeProxy.prototype.__init_fields__ = RuntimeProxy__init_fields__;
RuntimeProxy.quark_spi_api_RuntimeProxy_ref = quark_md.Root.quark_spi_api_RuntimeProxy_md;
function RuntimeProxy_open(url, handler) {
    (this.impl).open(url, handler);
}
RuntimeProxy.prototype.open = RuntimeProxy_open;

function RuntimeProxy_request(request, handler) {
    (this.impl).request(request, handler);
}
RuntimeProxy.prototype.request = RuntimeProxy_request;

function RuntimeProxy_schedule(handler, delayInSeconds) {
    (this.impl).schedule(new TaskProxy(this, handler), delayInSeconds);
}
RuntimeProxy.prototype.schedule = RuntimeProxy_schedule;

function RuntimeProxy_codec() {
    return (this.impl).codec();
}
RuntimeProxy.prototype.codec = RuntimeProxy_codec;

function RuntimeProxy_serveHTTP(url, servlet) {
    (this.impl).serveHTTP(url, new HTTPServletProxy(this, servlet));
}
RuntimeProxy.prototype.serveHTTP = RuntimeProxy_serveHTTP;

function RuntimeProxy_serveWS(url, servlet) {
    (this.impl).serveWS(url, new WSServletProxy(this, servlet));
}
RuntimeProxy.prototype.serveWS = RuntimeProxy_serveWS;

function RuntimeProxy_respond(request, response) {
    (this.impl).respond(request, response);
}
RuntimeProxy.prototype.respond = RuntimeProxy_respond;

function RuntimeProxy_fail(message) {
    (this.impl).fail(message);
}
RuntimeProxy.prototype.fail = RuntimeProxy_fail;

function RuntimeProxy_logger(topic) {
    return (this.impl).logger(topic);
}
RuntimeProxy.prototype.logger = RuntimeProxy_logger;

function RuntimeProxy__getClass() {
    return "quark.spi_api.RuntimeProxy";
}
RuntimeProxy.prototype._getClass = RuntimeProxy__getClass;

function RuntimeProxy__getField(name) {
    if (_qrt.equals((name), ("impl"))) {
        return (this).impl;
    }
    return null;
}
RuntimeProxy.prototype._getField = RuntimeProxy__getField;

function RuntimeProxy__setField(name, value) {
    if (_qrt.equals((name), ("impl"))) {
        (this).impl = value;
    }
}
RuntimeProxy.prototype._setField = RuntimeProxy__setField;
