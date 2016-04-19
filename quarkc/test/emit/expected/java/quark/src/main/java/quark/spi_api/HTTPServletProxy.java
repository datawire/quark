package quark.spi_api;

public class HTTPServletProxy extends ServletProxy implements quark.HTTPServlet, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_HTTPServletProxy_ref = quark_md.Root.quark_spi_api_HTTPServletProxy_md;
    public quark.HTTPServlet http_servlet_impl;
    public HTTPServletProxy(quark.Runtime real_runtime, quark.HTTPServlet http_servlet_impl) {
        super(real_runtime, http_servlet_impl);
        (this).http_servlet_impl = http_servlet_impl;
    }
    public void onHTTPRequest(quark.HTTPRequest request, quark.HTTPResponse response) {
        (this.http_servlet_impl).onHTTPRequest(request, response);
    }
    public String _getClass() {
        return "quark.spi_api.HTTPServletProxy";
    }
    public Object _getField(String name) {
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
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            (this).servlet_impl = (quark.Servlet) (value);
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            (this).real_runtime = (quark.Runtime) (value);
        }
        if ((name)==("http_servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("http_servlet_impl"))) {
            (this).http_servlet_impl = (quark.HTTPServlet) (value);
        }
    }
    public void serveHTTP(String url) {
        (quark.concurrent.Context.runtime()).serveHTTP(url, this);
    }
}
