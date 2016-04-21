package quark_md;

public class quark_spi_api_tracing_WSHandlerProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_WSHandlerProxy();
    public quark_spi_api_tracing_WSHandlerProxy() {
        super("quark.spi_api_tracing.WSHandlerProxy");
        (this).name = "quark.spi_api_tracing.WSHandlerProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.WSHandler", "handler_impl"), new quark.reflect.Field("quark.spi_api_tracing.WebSocketProxy", "_wrapped_socket")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSError_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.WSHandlerProxy((io.datawire.quark.runtime.Logger) ((args).get(0)), (quark.WSHandler) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
