package quark.spi_api_tracing;

public class RuntimeProxy extends Identifiable implements quark.Runtime, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_RuntimeProxy_ref = quark_md.Root.quark_spi_api_tracing_RuntimeProxy_md;
    public quark.Runtime impl;
    public RuntimeProxy(quark.Runtime impl) {
        super((impl).logger("api"), "Runtime");
        (this).impl = impl;
    }
    public void open(String url, quark.WSHandler handler) {
        WSHandlerProxy wrapped_handler = new WSHandlerProxy((this).log, handler);
        ((this).log).debug(((((((this).id) + (".open(")) + (Functions.quote(url))) + (", ")) + ((wrapped_handler).id)) + (")"));
        (this.impl).open(url, wrapped_handler);
    }
    public void request(quark.HTTPRequest request, quark.HTTPHandler handler) {
        HTTPRequestProxy wrapped_request = new HTTPRequestProxy((this).log, request);
        HTTPHandlerProxy wrapped_handler = new HTTPHandlerProxy((this).log, wrapped_request, handler);
        ((this).log).debug(((((((((((this).id) + (".request(")) + ((wrapped_request).id)) + (" ")) + ((request).getMethod())) + (" ")) + (Functions.quote((request).getUrl()))) + (", ")) + ((wrapped_handler).id)) + (")"));
        (this.impl).request(request, wrapped_handler);
    }
    public void schedule(quark.Task handler, Double delayInSeconds) {
        TaskProxy wrapped_handler = new TaskProxy((this).log, this, handler);
        ((this).log).debug(((((((this).id) + (".schedule(")) + ((wrapped_handler).id)) + (", ")) + (Double.toString(delayInSeconds))) + (")"));
        (this.impl).schedule(wrapped_handler, delayInSeconds);
    }
    public io.datawire.quark.runtime.Codec codec() {
        ((this).log).debug(((this).id) + (".codec()"));
        return (this.impl).codec();
    }
    public void serveHTTP(String url, quark.HTTPServlet servlet) {
        HTTPServletProxy wrapped_servlet = new HTTPServletProxy((this).log, this, servlet);
        ((this).log).debug(((((((this).id) + (".serveHTTP(")) + (Functions.quote(url))) + (", ")) + ((wrapped_servlet).id)) + (")"));
        (this.impl).serveHTTP(url, wrapped_servlet);
    }
    public void serveWS(String url, quark.WSServlet servlet) {
        WSServletProxy wrapped_servlet = new WSServletProxy((this).log, this, servlet);
        ((this).log).debug(((((((this).id) + (".serveWS(")) + (Functions.quote(url))) + (", ")) + ((wrapped_servlet).id)) + (")"));
        (this.impl).serveWS(url, wrapped_servlet);
    }
    public void respond(quark.HTTPRequest request, quark.HTTPResponse response) {
        HTTPRequestProxy wrapped_request = (HTTPRequestProxy) (request);
        HTTPResponseProxy wrapped_response = (HTTPResponseProxy) (response);
        ((this).log).debug(((((((((((this).id) + (".respond(")) + ((wrapped_request).id)) + (", ")) + ((wrapped_response).id)) + (" ")) + (Integer.toString((wrapped_response).getCode()))) + (" ")) + ((wrapped_response).getBody())) + (")"));
        (this.impl).respond((wrapped_request).request_impl, (wrapped_response).response_impl);
    }
    public void fail(String message) {
        ((this).log).info(((((this).id) + (".fail(")) + (Functions.quote(message))) + (")"));
        (this.impl).fail(message);
    }
    public io.datawire.quark.runtime.Logger logger(String topic) {
        return (this.impl).logger(topic);
    }
    public String _getClass() {
        return "quark.spi_api_tracing.RuntimeProxy";
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
        if ((name)==("impl") || ((Object)(name) != null && ((Object) (name)).equals("impl"))) {
            return (this).impl;
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
        if ((name)==("impl") || ((Object)(name) != null && ((Object) (name)).equals("impl"))) {
            (this).impl = (quark.Runtime) (value);
        }
    }
}
