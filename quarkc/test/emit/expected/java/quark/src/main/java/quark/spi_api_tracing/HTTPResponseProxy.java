package quark.spi_api_tracing;

public class HTTPResponseProxy extends Identifiable implements quark.HTTPResponse, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_HTTPResponseProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPResponseProxy_md;
    public quark.HTTPResponse response_impl;
    public HTTPResponseProxy(io.datawire.quark.runtime.Logger log, quark.HTTPResponse response_impl) {
        super(log, "HTTPResponse");
        (this).response_impl = response_impl;
    }
    public Integer getCode() {
        return (this.response_impl).getCode();
    }
    public void setCode(Integer code) {
        (this.response_impl).setCode(code);
    }
    public void setBody(String data) {
        (this.response_impl).setBody(data);
    }
    public String getBody() {
        return (this.response_impl).getBody();
    }
    public void setHeader(String key, String value) {
        (this.response_impl).setHeader(key, value);
    }
    public String getHeader(String key) {
        return (this.response_impl).getHeader(key);
    }
    public java.util.ArrayList<String> getHeaders() {
        return (this.response_impl).getHeaders();
    }
    public String _getClass() {
        return "quark.spi_api_tracing.HTTPResponseProxy";
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
        if ((name)==("response_impl") || ((Object)(name) != null && ((Object) (name)).equals("response_impl"))) {
            return (this).response_impl;
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
        if ((name)==("response_impl") || ((Object)(name) != null && ((Object) (name)).equals("response_impl"))) {
            (this).response_impl = (quark.HTTPResponse) (value);
        }
    }
}
