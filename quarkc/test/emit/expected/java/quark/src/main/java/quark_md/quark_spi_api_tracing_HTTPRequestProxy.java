package quark_md;

public class quark_spi_api_tracing_HTTPRequestProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_HTTPRequestProxy();
    public quark_spi_api_tracing_HTTPRequestProxy() {
        super("quark.spi_api_tracing.HTTPRequestProxy");
        (this).name = "quark.spi_api_tracing.HTTPRequestProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.HTTPRequest", "request_impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method(), new quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method(), new quark_spi_api_tracing_HTTPRequestProxy_setBody_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getBody_Method(), new quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.HTTPRequestProxy((io.datawire.quark.runtime.Logger) ((args).get(0)), (quark.HTTPRequest) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
