package quark_md;

public class quark_spi_api_tracing_HTTPHandlerProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_HTTPHandlerProxy();
    public quark_spi_api_tracing_HTTPHandlerProxy() {
        super("quark.spi_api_tracing.HTTPHandlerProxy");
        (this).name = "quark.spi_api_tracing.HTTPHandlerProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.HTTPHandler", "handler_impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method(), new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method(), new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method(), new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.HTTPHandlerProxy((io.datawire.quark.runtime.Logger) ((args).get(0)), (quark.HTTPHandler) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
