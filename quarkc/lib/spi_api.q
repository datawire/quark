namespace quark {
namespace spi_api {

    class ServletProxy extends Servlet {
        Servlet servlet_impl;
        Runtime real_runtime;
        WSServletProxy(Runtime real_runtime, Servlet servlet_impl) {
            self.real_runtime = real_runtime;
            self.servlet_impl = servlet_impl;
        }
        void onServletInit(String url, Runtime runtime) {
            servlet_impl.onServletInit(url, real_runtime);
        }
        void onServletError(String url, String error) {
            servlet_impl.onServletError(url, error);
        }
        void onServletEnd(String url) {
            servlet_impl.onServletEnd(url);
        }
    }

    class HTTPServletProxy extends ServletProxy, HTTPServlet {
        HTTPServlet http_servlet_impl;
        HTTPServletProxy(Runtime real_runtime, HTTPServlet http_servlet_impl) {
            super(real_runtime, http_servlet_impl);
            self.http_servlet_impl = http_servlet_impl;
        }
        void onHTTPRequest(HTTPRequest request, HTTPResponse response) {
            http_servlet_impl.onHTTPRequest(request, response);
        }
    }

    class WSServletProxy extends ServletProxy, WSServlet {
        WSServlet ws_servlet_impl;
        WSServletProxy(Runtime real_runtime, WSServlet ws_servlet_impl) {
            super(real_runtime, ws_servlet_impl);
            self.ws_servlet_impl = ws_servlet_impl;
        }
        WSHandler onWSConnect(HTTPRequest upgradeRequest) {
            return ws_servlet_impl.onWSConnect(upgradeRequest);
        }
    }

    class TaskProxy extends Task {
        Task task_impl;
        Runtime real_runtime;
        TaskProxy(Runtime real_runtime, Task task_impl) {
            self.task_impl = task_impl;
            self.real_runtime = real_runtime;
        }
        void onExecute(Runtime runtime) {
            task_impl.onExecute(real_runtime);
        }
    }

    class RuntimeProxy extends Runtime {
        Runtime impl;
        RuntimeProxy(Runtime impl) {
            self.impl = impl;
        }
        void open(String url, WSHandler handler) {
            impl.open(url, handler);
        }
        void request(HTTPRequest request, HTTPHandler handler) {
            impl.request(request, handler);
        }
        void schedule(Task handler, float delayInSeconds) {
            impl.schedule(new TaskProxy(self, handler), delayInSeconds);
        }
        Codec codec() {
            return impl.codec();
        }
        void serveHTTP(String url, HTTPServlet servlet) {
            impl.serveHTTP(url, new HTTPServletProxy(self, servlet));
        }
        void serveWS(String url, WSServlet servlet) {
            impl.serveWS(url, new WSServletProxy(self, servlet));
        }
        void respond(HTTPRequest request, HTTPResponse response) {
            impl.respond(request, response);
        }
        void fail(String message) {
            impl.fail(message);
        }
        Logger logger(String topic) {
            return impl.logger(topic);
        }
    }
}
}
