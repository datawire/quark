package quark.spi_api;

public class RuntimeProxy implements quark.Runtime, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_RuntimeProxy_ref = quark_md.Root.quark_spi_api_RuntimeProxy_md;
    public quark.Runtime impl;
    public RuntimeProxy(quark.Runtime impl) {
        (this).impl = impl;
    }
    public void open(String url, quark.WSHandler handler) {
        (this.impl).open(url, handler);
    }
    public void request(quark.HTTPRequest request, quark.HTTPHandler handler) {
        (this.impl).request(request, handler);
    }
    public void schedule(quark.Task handler, Double delayInSeconds) {
        (this.impl).schedule(new TaskProxy(this, handler), delayInSeconds);
    }
    public io.datawire.quark.runtime.Codec codec() {
        return (this.impl).codec();
    }
    public void serveHTTP(String url, quark.HTTPServlet servlet) {
        (this.impl).serveHTTP(url, new HTTPServletProxy(this, servlet));
    }
    public void serveWS(String url, quark.WSServlet servlet) {
        (this.impl).serveWS(url, new WSServletProxy(this, servlet));
    }
    public void respond(quark.HTTPRequest request, quark.HTTPResponse response) {
        (this.impl).respond(request, response);
    }
    public void fail(String message) {
        (this.impl).fail(message);
    }
    public io.datawire.quark.runtime.Logger logger(String topic) {
        return (this.impl).logger(topic);
    }
    public String _getClass() {
        return "quark.spi_api.RuntimeProxy";
    }
    public Object _getField(String name) {
        if ((name)==("impl") || ((Object)(name) != null && ((Object) (name)).equals("impl"))) {
            return (this).impl;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("impl") || ((Object)(name) != null && ((Object) (name)).equals("impl"))) {
            (this).impl = (quark.Runtime) (value);
        }
    }
}
