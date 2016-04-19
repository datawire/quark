package quark_md;

public class quark_spi_api_tracing_WebSocketProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_WebSocketProxy();
    public quark_spi_api_tracing_WebSocketProxy() {
        super("quark.spi_api_tracing.WebSocketProxy");
        (this).name = "quark.spi_api_tracing.WebSocketProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.WebSocket", "socket_impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_WebSocketProxy_send_Method(), new quark_spi_api_tracing_WebSocketProxy_sendBinary_Method(), new quark_spi_api_tracing_WebSocketProxy_close_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.WebSocketProxy((io.datawire.quark.runtime.Logger) ((args).get(0)), (quark.WebSocket) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
