package quark_md;

public class quark_spi_api_tracing_WebSocketProxy_close_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_api_tracing_WebSocketProxy_close_Method() {
        super("quark.bool", "close", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi_api_tracing.WebSocketProxy obj = (quark.spi_api_tracing.WebSocketProxy) (object);
        return (obj).close();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
