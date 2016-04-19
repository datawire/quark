var _qrt = require("quark/quark_runtime.js");
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark_md = require('../../quark_md/index.js');
exports.quark_md = quark_md;
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark = require('../../quark/index.js');
exports.quark = quark;



function quote(str) {
    return str;
}
exports.quote = quote;

// CLASS Identificator
function Identificator() {
    this.__init_fields__();
}
exports.Identificator = Identificator;

function Identificator__init_fields__() {
    this.lock = new _qrt.Lock();
    this.seq = 0;
}
Identificator.prototype.__init_fields__ = Identificator__init_fields__;
Identificator.quark_spi_api_tracing_Identificator_ref = quark_md.Root.quark_spi_api_tracing_Identificator_md;
function Identificator_next(what) {
    (this.lock).acquire();
    var n = this.seq;
    this.seq = (this.seq) + (1);
    (this.lock).release();
    var basename = null;
    if (_qrt.equals((what), (null))) {
        basename = "?null?";
    } else {
        var clz = quark.reflect.Class.get(_qrt._getClass(what));
        if (_qrt.equals((clz), (null))) {
            basename = (("?") + ((quark.reflect.Class.get(_qrt._getClass(this))).getName())) + ("?");
        } else {
            basename = (clz).getName();
        }
    }
    return ((basename) + ("-")) + (_qrt.toString(n));
}
Identificator.prototype.next = Identificator_next;

function Identificator__getClass() {
    return "quark.spi_api_tracing.Identificator";
}
Identificator.prototype._getClass = Identificator__getClass;

function Identificator__getField(name) {
    if (_qrt.equals((name), ("lock"))) {
        return (this).lock;
    }
    if (_qrt.equals((name), ("seq"))) {
        return (this).seq;
    }
    return null;
}
Identificator.prototype._getField = Identificator__getField;

function Identificator__setField(name, value) {
    if (_qrt.equals((name), ("lock"))) {
        (this).lock = value;
    }
    if (_qrt.equals((name), ("seq"))) {
        (this).seq = value;
    }
}
Identificator.prototype._setField = Identificator__setField;

// CLASS Identifiable

function Identifiable(log, impl) {
    this.__init_fields__();
    (this).id = (Identifiable.namer).next(impl);
    (this).log = log;
}
exports.Identifiable = Identifiable;

function Identifiable__init_fields__() {
    this.id = null;
    this.log = null;
}
Identifiable.prototype.__init_fields__ = Identifiable__init_fields__;
Identifiable.namer = new Identificator();
Identifiable.quark_spi_api_tracing_Identifiable_ref = quark_md.Root.quark_spi_api_tracing_Identifiable_md;
function Identifiable__getClass() {
    return "quark.spi_api_tracing.Identifiable";
}
Identifiable.prototype._getClass = Identifiable__getClass;

function Identifiable__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
    return null;
}
Identifiable.prototype._getField = Identifiable__getField;

function Identifiable__setField(name, value) {
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
}
Identifiable.prototype._setField = Identifiable__setField;

// CLASS ServletProxy

function ServletProxy(log, real_runtime, servlet_impl) {
    ServletProxy.super_.call(this, log, servlet_impl);
    (this).real_runtime = real_runtime;
    (this).servlet_impl = servlet_impl;
}
exports.ServletProxy = ServletProxy;
_qrt.util.inherits(ServletProxy, Identifiable);

function ServletProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.servlet_impl = null;
    this.real_runtime = null;
}
ServletProxy.prototype.__init_fields__ = ServletProxy__init_fields__;
ServletProxy.quark_spi_api_tracing_ServletProxy_ref = quark_md.Root.quark_spi_api_tracing_ServletProxy_md;
function ServletProxy_onServletInit(url, runtime) {
    ((this).log).debug(((((((this).id) + (".onServletInit(")) + (quote(url))) + (", ")) + ((this.real_runtime).id)) + (")"));
    (this.servlet_impl).onServletInit(url, this.real_runtime);
}
ServletProxy.prototype.onServletInit = ServletProxy_onServletInit;

function ServletProxy_onServletError(url, error) {
    ((this).log).debug(((((((this).id) + (".onServletError(")) + (quote(url))) + (", ")) + (quote(error))) + (")"));
    (this.servlet_impl).onServletError(url, error);
}
ServletProxy.prototype.onServletError = ServletProxy_onServletError;

function ServletProxy_onServletEnd(url) {
    ((this).log).debug(((((this).id) + (".onServletEnd(")) + (quote(url))) + (")"));
    (this.servlet_impl).onServletEnd(url);
}
ServletProxy.prototype.onServletEnd = ServletProxy_onServletEnd;

function ServletProxy__getClass() {
    return "quark.spi_api_tracing.ServletProxy";
}
ServletProxy.prototype._getClass = ServletProxy__getClass;

function ServletProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
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
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("servlet_impl"))) {
        (this).servlet_impl = value;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        (this).real_runtime = value;
    }
}
ServletProxy.prototype._setField = ServletProxy__setField;

// CLASS HTTPRequestProxy

function HTTPRequestProxy(log, request_impl) {
    HTTPRequestProxy.super_.call(this, log, request_impl);
    (this).request_impl = request_impl;
}
exports.HTTPRequestProxy = HTTPRequestProxy;
_qrt.util.inherits(HTTPRequestProxy, Identifiable);

function HTTPRequestProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.request_impl = null;
}
HTTPRequestProxy.prototype.__init_fields__ = HTTPRequestProxy__init_fields__;
HTTPRequestProxy.quark_spi_api_tracing_HTTPRequestProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPRequestProxy_md;
function HTTPRequestProxy_getUrl() {
    return (this.request_impl).getUrl();
}
HTTPRequestProxy.prototype.getUrl = HTTPRequestProxy_getUrl;

function HTTPRequestProxy_setMethod(method) {
    (this.request_impl).setMethod(method);
}
HTTPRequestProxy.prototype.setMethod = HTTPRequestProxy_setMethod;

function HTTPRequestProxy_getMethod() {
    return (this.request_impl).getMethod();
}
HTTPRequestProxy.prototype.getMethod = HTTPRequestProxy_getMethod;

function HTTPRequestProxy_setBody(data) {
    (this.request_impl).setBody(data);
}
HTTPRequestProxy.prototype.setBody = HTTPRequestProxy_setBody;

function HTTPRequestProxy_getBody() {
    return (this.request_impl).getBody();
}
HTTPRequestProxy.prototype.getBody = HTTPRequestProxy_getBody;

function HTTPRequestProxy_setHeader(key, value) {
    (this.request_impl).setHeader(key, value);
}
HTTPRequestProxy.prototype.setHeader = HTTPRequestProxy_setHeader;

function HTTPRequestProxy_getHeader(key) {
    return (this.request_impl).getHeader(key);
}
HTTPRequestProxy.prototype.getHeader = HTTPRequestProxy_getHeader;

function HTTPRequestProxy_getHeaders() {
    return (this.request_impl).getHeaders();
}
HTTPRequestProxy.prototype.getHeaders = HTTPRequestProxy_getHeaders;

function HTTPRequestProxy__getClass() {
    return "quark.spi_api_tracing.HTTPRequestProxy";
}
HTTPRequestProxy.prototype._getClass = HTTPRequestProxy__getClass;

function HTTPRequestProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
    if (_qrt.equals((name), ("request_impl"))) {
        return (this).request_impl;
    }
    return null;
}
HTTPRequestProxy.prototype._getField = HTTPRequestProxy__getField;

function HTTPRequestProxy__setField(name, value) {
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("request_impl"))) {
        (this).request_impl = value;
    }
}
HTTPRequestProxy.prototype._setField = HTTPRequestProxy__setField;

// CLASS HTTPResponseProxy

function HTTPResponseProxy(log, response_impl) {
    HTTPResponseProxy.super_.call(this, log, response_impl);
    (this).response_impl = response_impl;
}
exports.HTTPResponseProxy = HTTPResponseProxy;
_qrt.util.inherits(HTTPResponseProxy, Identifiable);

function HTTPResponseProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.response_impl = null;
}
HTTPResponseProxy.prototype.__init_fields__ = HTTPResponseProxy__init_fields__;
HTTPResponseProxy.quark_spi_api_tracing_HTTPResponseProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPResponseProxy_md;
function HTTPResponseProxy_getCode() {
    return (this.response_impl).getCode();
}
HTTPResponseProxy.prototype.getCode = HTTPResponseProxy_getCode;

function HTTPResponseProxy_setCode(code) {
    (this.response_impl).setCode(code);
}
HTTPResponseProxy.prototype.setCode = HTTPResponseProxy_setCode;

function HTTPResponseProxy_setBody(data) {
    (this.response_impl).setBody(data);
}
HTTPResponseProxy.prototype.setBody = HTTPResponseProxy_setBody;

function HTTPResponseProxy_getBody() {
    return (this.response_impl).getBody();
}
HTTPResponseProxy.prototype.getBody = HTTPResponseProxy_getBody;

function HTTPResponseProxy_setHeader(key, value) {
    (this.response_impl).setHeader(key, value);
}
HTTPResponseProxy.prototype.setHeader = HTTPResponseProxy_setHeader;

function HTTPResponseProxy_getHeader(key) {
    return (this.response_impl).getHeader(key);
}
HTTPResponseProxy.prototype.getHeader = HTTPResponseProxy_getHeader;

function HTTPResponseProxy_getHeaders() {
    return (this.response_impl).getHeaders();
}
HTTPResponseProxy.prototype.getHeaders = HTTPResponseProxy_getHeaders;

function HTTPResponseProxy__getClass() {
    return "quark.spi_api_tracing.HTTPResponseProxy";
}
HTTPResponseProxy.prototype._getClass = HTTPResponseProxy__getClass;

function HTTPResponseProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
    if (_qrt.equals((name), ("response_impl"))) {
        return (this).response_impl;
    }
    return null;
}
HTTPResponseProxy.prototype._getField = HTTPResponseProxy__getField;

function HTTPResponseProxy__setField(name, value) {
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("response_impl"))) {
        (this).response_impl = value;
    }
}
HTTPResponseProxy.prototype._setField = HTTPResponseProxy__setField;

// CLASS HTTPServletProxy

function HTTPServletProxy(log, real_runtime, http_servlet_impl) {
    HTTPServletProxy.super_.call(this, log, real_runtime, http_servlet_impl);
    (this).http_servlet_impl = http_servlet_impl;
}
exports.HTTPServletProxy = HTTPServletProxy;
_qrt.util.inherits(HTTPServletProxy, ServletProxy);

function HTTPServletProxy__init_fields__() {
    ServletProxy.prototype.__init_fields__.call(this);
    this.http_servlet_impl = null;
}
HTTPServletProxy.prototype.__init_fields__ = HTTPServletProxy__init_fields__;
HTTPServletProxy.quark_spi_api_tracing_HTTPServletProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPServletProxy_md;
function HTTPServletProxy_onHTTPRequest(request, response) {
    var wrapped_request = new HTTPRequestProxy((this).log, request);
    var wrapped_response = new HTTPResponseProxy((this).log, response);
    ((this).log).debug(((((((((((this).id) + (".onHTTPRequest(")) + ((wrapped_request).id)) + (" ")) + ((request).getMethod())) + (" ")) + (quote((request).getUrl()))) + (", ")) + ((wrapped_response).id)) + (")"));
    (this.http_servlet_impl).onHTTPRequest(wrapped_request, wrapped_response);
}
HTTPServletProxy.prototype.onHTTPRequest = HTTPServletProxy_onHTTPRequest;

function HTTPServletProxy__getClass() {
    return "quark.spi_api_tracing.HTTPServletProxy";
}
HTTPServletProxy.prototype._getClass = HTTPServletProxy__getClass;

function HTTPServletProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
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
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
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

function WSServletProxy(log, real_runtime, ws_servlet_impl) {
    WSServletProxy.super_.call(this, log, real_runtime, ws_servlet_impl);
    (this).ws_servlet_impl = ws_servlet_impl;
}
exports.WSServletProxy = WSServletProxy;
_qrt.util.inherits(WSServletProxy, ServletProxy);

function WSServletProxy__init_fields__() {
    ServletProxy.prototype.__init_fields__.call(this);
    this.ws_servlet_impl = null;
}
WSServletProxy.prototype.__init_fields__ = WSServletProxy__init_fields__;
WSServletProxy.quark_spi_api_tracing_WSServletProxy_ref = quark_md.Root.quark_spi_api_tracing_WSServletProxy_md;
function WSServletProxy_onWSConnect(request) {
    var wrapped_request = new HTTPRequestProxy((this).log, request);
    ((this).log).debug(((((((((this).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (" ")) + ((request).getMethod())) + (" ")) + (quote((request).getUrl()))) + (")..."));
    var handler = (this.ws_servlet_impl).onWSConnect(wrapped_request);
    if (_qrt.equals((handler), (null))) {
        ((this).log).debug(((((((this).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (")")) + (" -> ")) + ("null"));
        return handler;
    } else {
        var wrapped_handler = new WSHandlerProxy((this).log, handler);
        ((this).log).debug(((((((this).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (")")) + (" -> ")) + ((wrapped_handler).id));
        return wrapped_handler;
    }
}
WSServletProxy.prototype.onWSConnect = WSServletProxy_onWSConnect;

function WSServletProxy__getClass() {
    return "quark.spi_api_tracing.WSServletProxy";
}
WSServletProxy.prototype._getClass = WSServletProxy__getClass;

function WSServletProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
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
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
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

function TaskProxy(log, real_runtime, task_impl) {
    TaskProxy.super_.call(this, log, task_impl);
    (this).task_impl = task_impl;
    (this).real_runtime = real_runtime;
}
exports.TaskProxy = TaskProxy;
_qrt.util.inherits(TaskProxy, Identifiable);

function TaskProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.task_impl = null;
    this.real_runtime = null;
}
TaskProxy.prototype.__init_fields__ = TaskProxy__init_fields__;
TaskProxy.quark_spi_api_tracing_TaskProxy_ref = quark_md.Root.quark_spi_api_tracing_TaskProxy_md;
function TaskProxy_onExecute(runtime) {
    ((this).log).debug(((((this).id) + (".onExecute(")) + ((this.real_runtime).id)) + (")"));
    (this.task_impl).onExecute(this.real_runtime);
}
TaskProxy.prototype.onExecute = TaskProxy_onExecute;

function TaskProxy__getClass() {
    return "quark.spi_api_tracing.TaskProxy";
}
TaskProxy.prototype._getClass = TaskProxy__getClass;

function TaskProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
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
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("task_impl"))) {
        (this).task_impl = value;
    }
    if (_qrt.equals((name), ("real_runtime"))) {
        (this).real_runtime = value;
    }
}
TaskProxy.prototype._setField = TaskProxy__setField;

// CLASS WebSocketProxy

function WebSocketProxy(log, socket_impl) {
    WebSocketProxy.super_.call(this, log, socket_impl);
    (this).socket_impl = socket_impl;
}
exports.WebSocketProxy = WebSocketProxy;
_qrt.util.inherits(WebSocketProxy, Identifiable);

function WebSocketProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.socket_impl = null;
}
WebSocketProxy.prototype.__init_fields__ = WebSocketProxy__init_fields__;
WebSocketProxy.quark_spi_api_tracing_WebSocketProxy_ref = quark_md.Root.quark_spi_api_tracing_WebSocketProxy_md;
function WebSocketProxy_send(message) {
    ((this).log).debug(((((this).id) + (".send(")) + (quote(message))) + (")..."));
    var ret = (this.socket_impl).send(message);
    ((this).log).debug((((((this).id) + (".send(")) + (")")) + (" -> ")) + ((ret).toString()));
    return ret;
}
WebSocketProxy.prototype.send = WebSocketProxy_send;

function WebSocketProxy_sendBinary(message) {
    ((this).log).debug(((((this).id) + (".sendBinary(")) + (((quark.concurrent.Context.runtime()).codec()).toHexdump(message, 0, (message).capacity(), 4))) + (")..."));
    var ret = (this.socket_impl).sendBinary(message);
    ((this).log).debug((((((this).id) + (".sendBinary(")) + (")")) + (" -> ")) + ((ret).toString()));
    return ret;
}
WebSocketProxy.prototype.sendBinary = WebSocketProxy_sendBinary;

function WebSocketProxy_close() {
    ((this).log).debug((((this).id) + (".close(")) + (")..."));
    var ret = (this.socket_impl).close();
    ((this).log).debug((((((this).id) + (".close(")) + (")")) + (" -> ")) + ((ret).toString()));
    return ret;
}
WebSocketProxy.prototype.close = WebSocketProxy_close;

function WebSocketProxy__getClass() {
    return "quark.spi_api_tracing.WebSocketProxy";
}
WebSocketProxy.prototype._getClass = WebSocketProxy__getClass;

function WebSocketProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
    if (_qrt.equals((name), ("socket_impl"))) {
        return (this).socket_impl;
    }
    return null;
}
WebSocketProxy.prototype._getField = WebSocketProxy__getField;

function WebSocketProxy__setField(name, value) {
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("socket_impl"))) {
        (this).socket_impl = value;
    }
}
WebSocketProxy.prototype._setField = WebSocketProxy__setField;

// CLASS WSHandlerProxy

function WSHandlerProxy(log, handler_impl) {
    WSHandlerProxy.super_.call(this, log, handler_impl);
    (this).handler_impl = handler_impl;
}
exports.WSHandlerProxy = WSHandlerProxy;
_qrt.util.inherits(WSHandlerProxy, Identifiable);

function WSHandlerProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.handler_impl = null;
    this.wrapped_socket = null;
}
WSHandlerProxy.prototype.__init_fields__ = WSHandlerProxy__init_fields__;
WSHandlerProxy.quark_spi_api_tracing_WSHandlerProxy_ref = quark_md.Root.quark_spi_api_tracing_WSHandlerProxy_md;
function WSHandlerProxy_onWSInit(socket) {
    this.wrapped_socket = new WebSocketProxy((this).log, socket);
    ((this).log).debug(((((this).id) + (".onWSInit(")) + ((this.wrapped_socket).id)) + (")"));
    (this.handler_impl).onWSInit(this.wrapped_socket);
}
WSHandlerProxy.prototype.onWSInit = WSHandlerProxy_onWSInit;

function WSHandlerProxy_onWSConnected(socket) {
    ((this).log).debug(((((this).id) + (".onWSConnected(")) + ((this.wrapped_socket).id)) + (")"));
    (this.handler_impl).onWSConnected(this.wrapped_socket);
}
WSHandlerProxy.prototype.onWSConnected = WSHandlerProxy_onWSConnected;

function WSHandlerProxy_onWSMessage(socket, message) {
    ((this).log).debug(((((((this).id) + (".onWSMessage(")) + ((this.wrapped_socket).id)) + (", ")) + (quote(message))) + (")"));
    (this.handler_impl).onWSMessage(this.wrapped_socket, message);
}
WSHandlerProxy.prototype.onWSMessage = WSHandlerProxy_onWSMessage;

function WSHandlerProxy_onWSBinary(socket, message) {
    ((this).log).debug(((((((this).id) + (".onWSBinary(")) + ((this.wrapped_socket).id)) + (", ")) + (((quark.concurrent.Context.runtime()).codec()).toHexdump(message, 0, (message).capacity(), 4))) + (")"));
    (this.handler_impl).onWSBinary(this.wrapped_socket, message);
}
WSHandlerProxy.prototype.onWSBinary = WSHandlerProxy_onWSBinary;

function WSHandlerProxy_onWSClosed(socket) {
    ((this).log).debug(((((this).id) + (".onWSClosed(")) + ((this.wrapped_socket).id)) + (")"));
    (this.handler_impl).onWSClosed(this.wrapped_socket);
}
WSHandlerProxy.prototype.onWSClosed = WSHandlerProxy_onWSClosed;

function WSHandlerProxy_onWSError(socket) {
    ((this).log).debug(((((this).id) + (".onWSError(")) + ((this.wrapped_socket).id)) + (")"));
    (this.handler_impl).onWSError(this.wrapped_socket);
}
WSHandlerProxy.prototype.onWSError = WSHandlerProxy_onWSError;

function WSHandlerProxy_onWSFinal(socket) {
    ((this).log).debug(((((this).id) + (".onWSFinal(")) + ((this.wrapped_socket).id)) + (")"));
    (this.handler_impl).onWSFinal(this.wrapped_socket);
}
WSHandlerProxy.prototype.onWSFinal = WSHandlerProxy_onWSFinal;

function WSHandlerProxy__getClass() {
    return "quark.spi_api_tracing.WSHandlerProxy";
}
WSHandlerProxy.prototype._getClass = WSHandlerProxy__getClass;

function WSHandlerProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
    if (_qrt.equals((name), ("handler_impl"))) {
        return (this).handler_impl;
    }
    if (_qrt.equals((name), ("wrapped_socket"))) {
        return (this).wrapped_socket;
    }
    return null;
}
WSHandlerProxy.prototype._getField = WSHandlerProxy__getField;

function WSHandlerProxy__setField(name, value) {
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("handler_impl"))) {
        (this).handler_impl = value;
    }
    if (_qrt.equals((name), ("wrapped_socket"))) {
        (this).wrapped_socket = value;
    }
}
WSHandlerProxy.prototype._setField = WSHandlerProxy__setField;

// CLASS HTTPHandlerProxy

function HTTPHandlerProxy(log, handler_impl) {
    HTTPHandlerProxy.super_.call(this, log, handler_impl);
    (this).handler_impl = handler_impl;
}
exports.HTTPHandlerProxy = HTTPHandlerProxy;
_qrt.util.inherits(HTTPHandlerProxy, Identifiable);

function HTTPHandlerProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.handler_impl = null;
}
HTTPHandlerProxy.prototype.__init_fields__ = HTTPHandlerProxy__init_fields__;
HTTPHandlerProxy.quark_spi_api_tracing_HTTPHandlerProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPHandlerProxy_md;
function HTTPHandlerProxy_onHTTPInit(request) {
    var wrapped_request = request;
    ((this).log).debug(((((this).id) + (".onHTTPInit(")) + ((wrapped_request).id)) + (")"));
    ((this).handler_impl).onHTTPInit(request);
}
HTTPHandlerProxy.prototype.onHTTPInit = HTTPHandlerProxy_onHTTPInit;

function HTTPHandlerProxy_onHTTPResponse(request, response) {
    var wrapped_request = request;
    ((this).log).debug(((((((((this).id) + (".onHTTPResponse(")) + ((wrapped_request).id)) + (", ")) + (_qrt.toString((response).getCode()))) + (" ")) + (quote((response).getBody()))) + (")"));
    ((this).handler_impl).onHTTPResponse(request, response);
}
HTTPHandlerProxy.prototype.onHTTPResponse = HTTPHandlerProxy_onHTTPResponse;

function HTTPHandlerProxy_onHTTPError(request, message) {
    var wrapped_request = request;
    ((this).log).debug(((((((this).id) + (".onHTTPError(")) + ((wrapped_request).id)) + (", ")) + (quote(message))) + (")"));
    ((this).handler_impl).onHTTPError(request, message);
}
HTTPHandlerProxy.prototype.onHTTPError = HTTPHandlerProxy_onHTTPError;

function HTTPHandlerProxy_onHTTPFinal(request) {
    var wrapped_request = request;
    ((this).log).debug(((((this).id) + (".onHTTPFinal(")) + ((wrapped_request).id)) + (")"));
    ((this).handler_impl).onHTTPFinal(request);
}
HTTPHandlerProxy.prototype.onHTTPFinal = HTTPHandlerProxy_onHTTPFinal;

function HTTPHandlerProxy__getClass() {
    return "quark.spi_api_tracing.HTTPHandlerProxy";
}
HTTPHandlerProxy.prototype._getClass = HTTPHandlerProxy__getClass;

function HTTPHandlerProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
    if (_qrt.equals((name), ("handler_impl"))) {
        return (this).handler_impl;
    }
    return null;
}
HTTPHandlerProxy.prototype._getField = HTTPHandlerProxy__getField;

function HTTPHandlerProxy__setField(name, value) {
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("handler_impl"))) {
        (this).handler_impl = value;
    }
}
HTTPHandlerProxy.prototype._setField = HTTPHandlerProxy__setField;

// CLASS RuntimeProxy

function RuntimeProxy(impl) {
    RuntimeProxy.super_.call(this, (impl).logger("api"), impl);
    ((this).log).debug(("new ") + ((this).id));
    (this).impl = impl;
}
exports.RuntimeProxy = RuntimeProxy;
_qrt.util.inherits(RuntimeProxy, Identifiable);

function RuntimeProxy__init_fields__() {
    Identifiable.prototype.__init_fields__.call(this);
    this.impl = null;
}
RuntimeProxy.prototype.__init_fields__ = RuntimeProxy__init_fields__;
RuntimeProxy.quark_spi_api_tracing_RuntimeProxy_ref = quark_md.Root.quark_spi_api_tracing_RuntimeProxy_md;
function RuntimeProxy_open(url, handler) {
    var wrapped_handler = new WSHandlerProxy((this).log, handler);
    ((this).log).debug(((((((this).id) + (".open(")) + (quote(url))) + (", ")) + ((wrapped_handler).id)) + (")"));
    (this.impl).open(url, wrapped_handler);
}
RuntimeProxy.prototype.open = RuntimeProxy_open;

function RuntimeProxy_request(request, handler) {
    var wrapped_handler = new HTTPHandlerProxy((this).log, handler);
    var wrapped_request = new HTTPRequestProxy((this).log, request);
    ((this).log).debug(((((((((((this).id) + (".request(")) + ((wrapped_request).id)) + (" ")) + ((request).getMethod())) + (" ")) + (quote((request).getUrl()))) + (", ")) + ((wrapped_handler).id)) + (")"));
    (this.impl).request(wrapped_request, wrapped_handler);
}
RuntimeProxy.prototype.request = RuntimeProxy_request;

function RuntimeProxy_schedule(handler, delayInSeconds) {
    var wrapped_handler = new TaskProxy((this).log, this, handler);
    ((this).log).debug(((((((this).id) + (".schedule(")) + ((wrapped_handler).id)) + (", ")) + (_qrt.toString(delayInSeconds))) + (")"));
    (this.impl).schedule(wrapped_handler, delayInSeconds);
}
RuntimeProxy.prototype.schedule = RuntimeProxy_schedule;

function RuntimeProxy_codec() {
    ((this).log).debug(((this).id) + (".codec()"));
    return (this.impl).codec();
}
RuntimeProxy.prototype.codec = RuntimeProxy_codec;

function RuntimeProxy_serveHTTP(url, servlet) {
    var wrapped_servlet = new HTTPServletProxy((this).log, this, servlet);
    ((this).log).debug(((((((this).id) + (".serveHTTP(")) + (quote(url))) + (", ")) + ((wrapped_servlet).id)) + (")"));
    (this.impl).serveHTTP(url, wrapped_servlet);
}
RuntimeProxy.prototype.serveHTTP = RuntimeProxy_serveHTTP;

function RuntimeProxy_serveWS(url, servlet) {
    var wrapped_servlet = new WSServletProxy((this).log, this, servlet);
    ((this).log).debug(((((((this).id) + (".serveWS(")) + (quote(url))) + (", ")) + ((wrapped_servlet).id)) + (")"));
    (this.impl).serveWS(url, wrapped_servlet);
}
RuntimeProxy.prototype.serveWS = RuntimeProxy_serveWS;

function RuntimeProxy_respond(request, response) {
    var wrapped_request = request;
    var wrapped_response = response;
    ((this).log).debug(((((((((((this).id) + (".respond(")) + ((wrapped_request).id)) + (", ")) + ((wrapped_response).id)) + (" ")) + (_qrt.toString((wrapped_response).getCode()))) + (" ")) + ((wrapped_response).getBody())) + (")"));
    (this.impl).respond((wrapped_request).request_impl, (wrapped_response).response_impl);
}
RuntimeProxy.prototype.respond = RuntimeProxy_respond;

function RuntimeProxy_fail(message) {
    ((this).log).info(((((this).id) + (".fail(")) + (quote(message))) + (")"));
    (this.impl).fail(message);
}
RuntimeProxy.prototype.fail = RuntimeProxy_fail;

function RuntimeProxy_logger(topic) {
    ((this).log).info(((((this).id) + (".logger(")) + (quote(topic))) + (")"));
    return (this.impl).logger(topic);
}
RuntimeProxy.prototype.logger = RuntimeProxy_logger;

function RuntimeProxy__getClass() {
    return "quark.spi_api_tracing.RuntimeProxy";
}
RuntimeProxy.prototype._getClass = RuntimeProxy__getClass;

function RuntimeProxy__getField(name) {
    if (_qrt.equals((name), ("namer"))) {
        return Identifiable.namer;
    }
    if (_qrt.equals((name), ("id"))) {
        return (this).id;
    }
    if (_qrt.equals((name), ("log"))) {
        return (this).log;
    }
    if (_qrt.equals((name), ("impl"))) {
        return (this).impl;
    }
    return null;
}
RuntimeProxy.prototype._getField = RuntimeProxy__getField;

function RuntimeProxy__setField(name, value) {
    if (_qrt.equals((name), ("namer"))) {
        Identifiable.namer = value;
    }
    if (_qrt.equals((name), ("id"))) {
        (this).id = value;
    }
    if (_qrt.equals((name), ("log"))) {
        (this).log = value;
    }
    if (_qrt.equals((name), ("impl"))) {
        (this).impl = value;
    }
}
RuntimeProxy.prototype._setField = RuntimeProxy__setField;
