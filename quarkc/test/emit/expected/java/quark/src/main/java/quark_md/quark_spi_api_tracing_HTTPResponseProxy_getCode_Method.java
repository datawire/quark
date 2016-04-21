package quark_md;

public class quark_spi_api_tracing_HTTPResponseProxy_getCode_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_api_tracing_HTTPResponseProxy_getCode_Method() {
        super("quark.int", "getCode", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi_api_tracing.HTTPResponseProxy obj = (quark.spi_api_tracing.HTTPResponseProxy) (object);
        return (obj).getCode();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
