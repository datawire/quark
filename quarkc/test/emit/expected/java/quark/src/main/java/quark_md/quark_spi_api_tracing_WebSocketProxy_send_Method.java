package quark_md;

public class quark_spi_api_tracing_WebSocketProxy_send_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_api_tracing_WebSocketProxy_send_Method() {
        super("quark.bool", "send", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi_api_tracing.WebSocketProxy obj = (quark.spi_api_tracing.WebSocketProxy) (object);
        return (obj).send((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
