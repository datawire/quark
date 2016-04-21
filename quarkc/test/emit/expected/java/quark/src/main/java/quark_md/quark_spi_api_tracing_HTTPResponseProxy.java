package quark_md;

public class quark_spi_api_tracing_HTTPResponseProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_HTTPResponseProxy();
    public quark_spi_api_tracing_HTTPResponseProxy() {
        super("quark.spi_api_tracing.HTTPResponseProxy");
        (this).name = "quark.spi_api_tracing.HTTPResponseProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.HTTPResponse", "response_impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_HTTPResponseProxy_getCode_Method(), new quark_spi_api_tracing_HTTPResponseProxy_setCode_Method(), new quark_spi_api_tracing_HTTPResponseProxy_setBody_Method(), new quark_spi_api_tracing_HTTPResponseProxy_getBody_Method(), new quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method(), new quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method(), new quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.HTTPResponseProxy((io.datawire.quark.runtime.Logger) ((args).get(0)), (quark.HTTPResponse) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
