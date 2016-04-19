package quark_md;

public class quark_spi_api_tracing_ServletProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_ServletProxy();
    public quark_spi_api_tracing_ServletProxy() {
        super("quark.spi_api_tracing.ServletProxy");
        (this).name = "quark.spi_api_tracing.ServletProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.spi_api_tracing.RuntimeProxy", "real_runtime")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_ServletProxy_onServletInit_Method(), new quark_spi_api_tracing_ServletProxy_onServletError_Method(), new quark_spi_api_tracing_ServletProxy_onServletEnd_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.ServletProxy((io.datawire.quark.runtime.Logger) ((args).get(0)), (quark.spi_api_tracing.RuntimeProxy) ((args).get(1)), (quark.Servlet) ((args).get(2)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
