package quark_md;

public class quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method() {
        super("quark.String", "getUrl", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi_api_tracing.HTTPRequestProxy obj = (quark.spi_api_tracing.HTTPRequestProxy) (object);
        return (obj).getUrl();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
