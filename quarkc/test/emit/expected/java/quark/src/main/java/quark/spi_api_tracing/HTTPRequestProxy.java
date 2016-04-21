package quark.spi_api_tracing;

public class HTTPRequestProxy extends Identifiable implements quark.HTTPRequest, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_HTTPRequestProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPRequestProxy_md;
    public quark.HTTPRequest request_impl;
    public HTTPRequestProxy(io.datawire.quark.runtime.Logger log, quark.HTTPRequest request_impl) {
        super(log, "HTTPRequest");
        (this).request_impl = request_impl;
    }
    public String getUrl() {
        return (this.request_impl).getUrl();
    }
    public void setMethod(String method) {
        (this.request_impl).setMethod(method);
    }
    public String getMethod() {
        return (this.request_impl).getMethod();
    }
    public void setBody(String data) {
        (this.request_impl).setBody(data);
    }
    public String getBody() {
        return (this.request_impl).getBody();
    }
    public void setHeader(String key, String value) {
        (this.request_impl).setHeader(key, value);
    }
    public String getHeader(String key) {
        return (this.request_impl).getHeader(key);
    }
    public java.util.ArrayList<String> getHeaders() {
        return (this.request_impl).getHeaders();
    }
    public String _getClass() {
        return "quark.spi_api_tracing.HTTPRequestProxy";
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
        if ((name)==("request_impl") || ((Object)(name) != null && ((Object) (name)).equals("request_impl"))) {
            return (this).request_impl;
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
        if ((name)==("request_impl") || ((Object)(name) != null && ((Object) (name)).equals("request_impl"))) {
            (this).request_impl = (quark.HTTPRequest) (value);
        }
    }
}
