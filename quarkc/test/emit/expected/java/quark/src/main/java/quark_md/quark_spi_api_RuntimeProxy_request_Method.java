package quark_md;

public class quark_spi_api_RuntimeProxy_request_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_api_RuntimeProxy_request_Method() {
        super("quark.void", "request", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.HTTPRequest", "quark.HTTPHandler"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi_api.RuntimeProxy obj = (quark.spi_api.RuntimeProxy) (object);
        (obj).request((quark.HTTPRequest) ((args).get(0)), (quark.HTTPHandler) ((args).get(1)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
