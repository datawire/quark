package quark.spi_api;

public class WSServletProxy extends ServletProxy implements quark.WSServlet, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_WSServletProxy_ref = quark_md.Root.quark_spi_api_WSServletProxy_md;
    public quark.WSServlet ws_servlet_impl;
    public WSServletProxy(quark.Runtime real_runtime, quark.WSServlet ws_servlet_impl) {
        super(real_runtime, ws_servlet_impl);
        (this).ws_servlet_impl = ws_servlet_impl;
    }
    public quark.WSHandler onWSConnect(quark.HTTPRequest upgradeRequest) {
        return (this.ws_servlet_impl).onWSConnect(upgradeRequest);
    }
    public String _getClass() {
        return "quark.spi_api.WSServletProxy";
    }
    public Object _getField(String name) {
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
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            (this).servlet_impl = (quark.Servlet) (value);
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            (this).real_runtime = (quark.Runtime) (value);
        }
        if ((name)==("ws_servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("ws_servlet_impl"))) {
            (this).ws_servlet_impl = (quark.WSServlet) (value);
        }
    }
    public void serveWS(String url) {
        (quark.concurrent.Context.runtime()).serveWS(url, this);
    }
}
