quark *;
namespace quark {
namespace spi_api_tracing {

    String quote(String str) {
        if (str.find("\\") >= 0) {
            str = "\\\\".join(str.split("\\"));
        }
        if (str.find("\n") >= 0) {
            str = "\\n".join(str.split("\n"));
        }
        if (str.find("\"") >= 0) {
            str = "\\\"".join(str.split("\""));
        }
        return "\"" + str + "\"";
    }
    String quote_error(Error error) {
        return error.getClass().getName() + "(" + quote(error.getMessage()) + ")";
    }

    class Identificator {
        concurrent.Lock lock = new concurrent.Lock();
        int seq = 0;

        String next(String basename) {
            lock.acquire();
            int n = seq;
            seq = seq + 1;
            lock.release();
            return basename + "$" + n.toString();
        }
    }

    class Identifiable {
        static Identificator namer = new Identificator();
        String id;
        Logger log;
        Identifiable(Logger log, String basename) {
            self.id = namer.next(basename);
            self.log = log;
        }
    }

    class ServletProxy extends Identifiable, Servlet {
        Servlet servlet_impl;
        RuntimeProxy real_runtime;
        ServletProxy(Logger log, String basename, RuntimeProxy real_runtime, Servlet servlet_impl) {
            super(log, basename);
            self.real_runtime = real_runtime;
            self.servlet_impl = servlet_impl;
        }
        void onServletInit(String url, Runtime runtime) {
            self.log.debug(self.id + ".onServletInit("
                           + quote(url) + ", "
                           + real_runtime.id
                           + ")");
            servlet_impl.onServletInit(url, real_runtime);
        }
        void onServletError(String url, ServletError error) {
            self.log.debug(self.id + ".onServletError("
                           + quote(url) + ", "
                           + quote_error(error)
                           + ")");
            servlet_impl.onServletError(url, error);
        }
        void onServletEnd(String url) {
            self.log.debug(self.id + ".onServletEnd("
                           + quote(url)
                           + ")");
            servlet_impl.onServletEnd(url);
        }
    }

    class HTTPRequestProxy extends Identifiable, HTTPRequest {
        HTTPRequest request_impl;
        HTTPRequestProxy(Logger log, HTTPRequest request_impl) {
            super(log, "HTTPRequest");
            self.request_impl = request_impl;
        }
        String getUrl() { return request_impl.getUrl(); }
        void setMethod(String method) { request_impl.setMethod(method); }
        String getMethod() { return request_impl.getMethod(); }
        void setBody(String data) { request_impl.setBody(data); }
        String getBody() { return request_impl.getBody(); }
        void setHeader(String key, String value) { request_impl.setHeader(key, value); }
        String getHeader(String key) { return request_impl.getHeader(key); }
        List<String> getHeaders() { return request_impl.getHeaders(); }
    }

    class HTTPResponseProxy extends Identifiable, HTTPResponse {
        HTTPResponse response_impl;
        HTTPResponseProxy(Logger log, HTTPResponse response_impl) {
            super(log, "HTTPResponse");
            self.response_impl = response_impl;
        }
        int getCode() { return response_impl.getCode(); }
        void setCode(int code) { response_impl.setCode(code); }
        void setBody(String data) { response_impl.setBody(data); }
        String getBody() { return response_impl.getBody(); }
        void setHeader(String key, String value) { response_impl.setHeader(key, value); }
        String getHeader(String key) { return response_impl.getHeader(key); }
        List<String> getHeaders() { return response_impl.getHeaders(); }
    }

    class HTTPServletProxy extends ServletProxy, HTTPServlet {
        HTTPServlet http_servlet_impl;
        HTTPServletProxy(Logger log, RuntimeProxy real_runtime, HTTPServlet http_servlet_impl) {
            super(log, "HTTPServlet", real_runtime, http_servlet_impl);
            self.http_servlet_impl = http_servlet_impl;
        }
        void onHTTPRequest(HTTPRequest request, HTTPResponse response) {
            HTTPRequestProxy wrapped_request = new HTTPRequestProxy(self.log, request);
            HTTPResponseProxy wrapped_response = new HTTPResponseProxy(self.log, response);
            self.log.debug(self.id + ".onHTTPRequest("
                           + wrapped_request.id + " " + request.getMethod() + " " + quote(request.getUrl()) + ", "
                           + wrapped_response.id
                           + ")");
            http_servlet_impl.onHTTPRequest(wrapped_request, wrapped_response);
        }
    }

    class WSServletProxy extends ServletProxy, WSServlet {
        WSServlet ws_servlet_impl;
        WSServletProxy(Logger log, RuntimeProxy real_runtime, WSServlet ws_servlet_impl) {
            super(log, "WSServlet", real_runtime, ws_servlet_impl);
            self.ws_servlet_impl = ws_servlet_impl;
        }
        WSHandler onWSConnect(HTTPRequest request) {
            HTTPRequestProxy wrapped_request = new HTTPRequestProxy(self.log, request);
            self.log.debug(self.id + ".onWSConnect("
                           + wrapped_request.id + " " + request.getMethod() + " " + quote(request.getUrl())
                           + ")...");
            WSHandler handler = ws_servlet_impl.onWSConnect(wrapped_request);
            if (handler == null) {
                self.log.debug(self.id + ".onWSConnect("
                               + wrapped_request.id
                               + ")"
                               + " -> "
                               + "null");
                return handler;
            } else {
                WSHandlerProxy wrapped_handler = new WSHandlerProxy(self.log, handler);
                self.log.debug(self.id + ".onWSConnect("
                               + wrapped_request.id
                               + ")"
                               + " -> "
                               + wrapped_handler.id );
                return wrapped_handler;
            }
        }
    }

    class TaskProxy extends Identifiable, Task {
        Task task_impl;
        RuntimeProxy real_runtime;
        TaskProxy(Logger log, RuntimeProxy real_runtime, Task task_impl) {
            super(log, "Task");
            self.task_impl = task_impl;
            self.real_runtime = real_runtime;
        }
        void onExecute(Runtime runtime) {
            self.log.debug(self.id + ".onExecute("
                           + real_runtime.id
                           + ")");
            task_impl.onExecute(real_runtime);
        }
    }

    class WebSocketProxy extends Identifiable, WebSocket {
        WebSocket socket_impl;
        WebSocketProxy(Logger log, WebSocket socket_impl) {
            super(log, "WebSocket");
            self.socket_impl = socket_impl;
        }
        bool send(String message) {
            self.log.debug(self.id + ".send("
                           + quote(message)
                           + ")...");
            bool ret = socket_impl.send(message);
            self.log.debug(self.id + ".send("
                           + ")"
                           + " -> " + ret.toString());
            return ret;
        }
        bool sendBinary(Buffer message) {
            self.log.debug(self.id + ".sendBinary("
                           + concurrent.Context.runtime().codec().toHexdump(message, 0, message.capacity(), 4)
                           + ")...");
            bool ret = socket_impl.sendBinary(message);
            self.log.debug(self.id + ".sendBinary("
                           + ")"
                           + " -> " + ret.toString());
            return ret;
        }
        bool close() {
            self.log.debug(self.id + ".close("
                           + ")...");
            bool ret = socket_impl.close();
            self.log.debug(self.id + ".close("
                           + ")"
                           + " -> " + ret.toString());
            return ret;
        }
    }

    class WSHandlerProxy extends Identifiable, WSHandler {
        WSHandler handler_impl;
        WebSocketProxy _wrapped_socket;
        WSHandlerProxy(Logger log, WSHandler handler_impl) {
            super(log, "WSHandler");
            self.handler_impl = handler_impl;
            self._wrapped_socket = null;
        }
        WebSocketProxy _wrap_socket(WebSocket socket) {
            if (_wrapped_socket == null) {
                _wrapped_socket = new WebSocketProxy(self.log, socket);
            }
            return _wrapped_socket;
        }
        void onWSInit(WebSocket socket) {
            WebSocketProxy wrapped_socket = _wrap_socket(socket);
            self.log.debug(self.id + ".onWSInit("
                           + wrapped_socket.id
                           + ")");
            handler_impl.onWSInit(wrapped_socket);
        }
        void onWSConnected(WebSocket socket) {
            WebSocketProxy wrapped_socket = _wrap_socket(socket);
            self.log.debug(self.id + ".onWSConnected("
                           + wrapped_socket.id
                           + ")");
            handler_impl.onWSConnected(wrapped_socket);
        }
        void onWSMessage(WebSocket socket, String message) {
            WebSocketProxy wrapped_socket = _wrap_socket(socket);
            self.log.debug(self.id + ".onWSMessage("
                           + wrapped_socket.id + ", "
                           + quote(message)
                           + ")");
            handler_impl.onWSMessage(wrapped_socket, message);
        }
        void onWSBinary(WebSocket socket, Buffer message) {
            WebSocketProxy wrapped_socket = _wrap_socket(socket);
            self.log.debug(self.id + ".onWSBinary("
                           + wrapped_socket.id + ", "
                           + concurrent.Context.runtime().codec().toHexdump(message, 0, message.capacity(), 4)
                           + ")");
            handler_impl.onWSBinary(wrapped_socket, message);
        }
        void onWSClosed(WebSocket socket) {
            WebSocketProxy wrapped_socket = _wrap_socket(socket);
            self.log.debug(self.id + ".onWSClosed("
                           + wrapped_socket.id
                           + ")");
            handler_impl.onWSClosed(wrapped_socket);
        }
        void onWSError(WebSocket socket, WSError error) {
            WebSocketProxy wrapped_socket = _wrap_socket(socket);
            self.log.debug(self.id + ".onWSError("
                           + wrapped_socket.id + ", "
                           + quote_error(error)
                           + ")");
            handler_impl.onWSError(wrapped_socket, error);
        }
        void onWSFinal(WebSocket socket) {
            WebSocketProxy wrapped_socket = _wrap_socket(socket);
            self.log.debug(self.id + ".onWSFinal("
                           + wrapped_socket.id
                           + ")");
            handler_impl.onWSFinal(wrapped_socket);
        }
    }

    class HTTPHandlerProxy extends Identifiable, HTTPHandler {
        HTTPHandler handler_impl;
        HTTPRequestProxy wrapped_request;
        HTTPHandlerProxy(Logger log, HTTPRequestProxy wrapped_request, HTTPHandler handler_impl) {
            super(log, "HTTPHandler");
            self.wrapped_request = wrapped_request;
            self.handler_impl = handler_impl;
        }
        void onHTTPInit(HTTPRequest request) {
            self.log.debug(self.id + ".onHTTPInit("
                           + wrapped_request.id
                           + ")");
            self.handler_impl.onHTTPInit(request);
        }
        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
            self.log.debug(self.id + ".onHTTPResponse("
                           + wrapped_request.id + ", "
                           + response.getCode().toString() + " " + quote(response.getBody())
                           + ")");
            self.handler_impl.onHTTPResponse(request, response);
        }
        void onHTTPError(HTTPRequest request, HTTPError error) {
            self.log.debug(self.id + ".onHTTPError("
                           + wrapped_request.id + ", "
                           + quote_error(error)
                           + ")");
            self.handler_impl.onHTTPError(request, error);
        }
        void onHTTPFinal(HTTPRequest request) {
            self.log.debug(self.id + ".onHTTPFinal("
                           + wrapped_request.id
                           + ")");
            self.handler_impl.onHTTPFinal(request);
        }
    }

    class RuntimeProxy extends Identifiable, Runtime {
        Runtime impl;
        RuntimeProxy(Runtime impl) {
            super(impl.logger("api"), "Runtime");
            self.impl = impl;
        }
        void open(String url, WSHandler handler) {
            WSHandlerProxy wrapped_handler = WSHandlerProxy(self.log, handler);
            self.log.debug(self.id + ".open("
                           + quote(url) + ", "
                           + wrapped_handler.id
                           + ")");
            impl.open(url, wrapped_handler);
        }
        void request(HTTPRequest request, HTTPHandler handler) {
            HTTPRequestProxy wrapped_request = HTTPRequestProxy(self.log, request);
            HTTPHandlerProxy wrapped_handler = HTTPHandlerProxy(self.log, wrapped_request, handler);
            self.log.debug(self.id + ".request("
                           + wrapped_request.id + " " + request.getMethod() + " " + quote(request.getUrl()) + ", "
                           + wrapped_handler.id
                           + ")");
            impl.request(request, wrapped_handler);
        }
        void schedule(Task handler, float delayInSeconds) {
            TaskProxy wrapped_handler = new TaskProxy(self.log, self, handler);
            self.log.debug(self.id + ".schedule("
                           + wrapped_handler.id + ", "
                           + delayInSeconds.toString()
                           + ")");
            impl.schedule(wrapped_handler, delayInSeconds);
        }
        Codec codec() {
            self.log.debug(self.id + ".codec()");
            return impl.codec();
        }
        long now() {
            self.log.debug(self.id + ".now()");
            return impl.now();
        }
        void sleep(float seconds) {
            self.log.debug(self.id + ".sleep("
                           + seconds.toString()
                           + ")");
            impl.sleep(seconds);
        }
        String uuid() {
            self.log.debug(self.id + ".uuid()");
            return impl.uuid();
        }
        Object callSafely(UnaryCallable callee, Object defaultResult) {
            self.log.debug(self.id + ".callSafely("
                           + callee.toString() + ", "
                           + defaultResult.toString() + ")");
            return impl.callSafely(callee, defaultResult);
        }
        void serveHTTP(String url, HTTPServlet servlet) {
            HTTPServletProxy wrapped_servlet = new HTTPServletProxy(self.log, self, servlet);
            self.log.debug(self.id + ".serveHTTP("
                           + quote(url) + ", "
                           + wrapped_servlet.id
                           + ")");
            impl.serveHTTP(url, wrapped_servlet);
        }
        void serveWS(String url, WSServlet servlet) {
            WSServletProxy wrapped_servlet = new WSServletProxy(self.log, self, servlet);
            self.log.debug(self.id + ".serveWS("
                           + quote(url) + ", "
                           + wrapped_servlet.id
                           + ")");
            impl.serveWS(url, wrapped_servlet);
        }
        void respond(HTTPRequest request, HTTPResponse response) {
            HTTPRequestProxy wrapped_request = ?request;
            HTTPResponseProxy wrapped_response = ?response;
            self.log.debug(self.id + ".respond("
                           + wrapped_request.id + ", "
                           + wrapped_response.id + " " + wrapped_response.getCode().toString() + " " + wrapped_response.getBody()
                           + ")");
            impl.respond(wrapped_request.request_impl, wrapped_response.response_impl);
        }
        void fail(String message) {
            self.log.info(self.id + ".fail("
                          + quote(message)
                          + ")");
            impl.fail(message);
        }
        Logger logger(String topic) {
            return impl.logger(topic);
        }
    }
}
}
