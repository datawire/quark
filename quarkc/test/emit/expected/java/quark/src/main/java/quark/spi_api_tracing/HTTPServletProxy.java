package quark.spi_api_tracing;

public class HTTPServletProxy extends ServletProxy implements quark.HTTPServlet, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_HTTPServletProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPServletProxy_md;
    public quark.HTTPServlet http_servlet_impl;
    public HTTPServletProxy(io.datawire.quark.runtime.Logger log, RuntimeProxy real_runtime, quark.HTTPServlet http_servlet_impl) {
        super(log, real_runtime, http_servlet_impl);
        (this).http_servlet_impl = http_servlet_impl;
    }
    public void onHTTPRequest(quark.HTTPRequest request, quark.HTTPResponse response) {
        HTTPRequestProxy wrapped_request = new HTTPRequestProxy((this).log, request);
        HTTPResponseProxy wrapped_response = new HTTPResponseProxy((this).log, response);
        ((this).log).debug(((((((((((this).id) + (".onHTTPRequest(")) + ((wrapped_request).id)) + (" ")) + ((request).getMethod())) + (" ")) + (Functions.quote((request).getUrl()))) + (", ")) + ((wrapped_response).id)) + (")"));
        (this.http_servlet_impl).onHTTPRequest(wrapped_request, wrapped_response);
    }
    public String _getClass() {
        return "quark.spi_api_tracing.HTTPServletProxy";
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
        if ((name)==("http_servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("http_servlet_impl"))) {
            return (this).http_servlet_impl;
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
        if ((name)==("http_servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("http_servlet_impl"))) {
            (this).http_servlet_impl = (quark.HTTPServlet) (value);
        }
    }
    public void serveHTTP(String url) {
        (quark.concurrent.Context.runtime()).serveHTTP(url, this);
    }
}
