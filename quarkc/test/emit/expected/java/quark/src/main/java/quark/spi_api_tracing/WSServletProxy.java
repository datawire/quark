package quark.spi_api_tracing;

public class WSServletProxy extends ServletProxy implements quark.WSServlet, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_WSServletProxy_ref = quark_md.Root.quark_spi_api_tracing_WSServletProxy_md;
    public quark.WSServlet ws_servlet_impl;
    public WSServletProxy(io.datawire.quark.runtime.Logger log, RuntimeProxy real_runtime, quark.WSServlet ws_servlet_impl) {
        super(log, real_runtime, ws_servlet_impl);
        (this).ws_servlet_impl = ws_servlet_impl;
    }
    public quark.WSHandler onWSConnect(quark.HTTPRequest request) {
        HTTPRequestProxy wrapped_request = new HTTPRequestProxy((this).log, request);
        ((this).log).debug(((((((((this).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (" ")) + ((request).getMethod())) + (" ")) + (Functions.quote((request).getUrl()))) + (")..."));
        quark.WSHandler handler = (this.ws_servlet_impl).onWSConnect(wrapped_request);
        if ((handler)==(null) || ((Object)(handler) != null && ((Object) (handler)).equals(null))) {
            ((this).log).debug(((((((this).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (")")) + (" -> ")) + ("null"));
            return handler;
        } else {
            WSHandlerProxy wrapped_handler = new WSHandlerProxy((this).log, handler);
            ((this).log).debug(((((((this).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (")")) + (" -> ")) + ((wrapped_handler).id));
            return wrapped_handler;
        }
    }
    public String _getClass() {
        return "quark.spi_api_tracing.WSServletProxy";
    }
    public Object _getField(String name) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            return Identifiable.namer;
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            return (this).id;
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            return (this).log;
        }
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            return (this).servlet_impl;
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            return (this).real_runtime;
        }
        if ((name)==("ws_servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("ws_servlet_impl"))) {
            return (this).ws_servlet_impl;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            Identifiable.namer = (Identificator) (value);
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            (this).id = (String) (value);
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            (this).log = (io.datawire.quark.runtime.Logger) (value);
        }
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            (this).servlet_impl = (quark.Servlet) (value);
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            (this).real_runtime = (RuntimeProxy) (value);
        }
        if ((name)==("ws_servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("ws_servlet_impl"))) {
            (this).ws_servlet_impl = (quark.WSServlet) (value);
        }
    }
    public void serveWS(String url) {
        (quark.concurrent.Context.runtime()).serveWS(url, this);
    }
}
