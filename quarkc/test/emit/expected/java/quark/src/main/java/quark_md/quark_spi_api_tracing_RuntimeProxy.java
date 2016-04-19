package quark_md;

public class quark_spi_api_tracing_RuntimeProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_RuntimeProxy();
    public quark_spi_api_tracing_RuntimeProxy() {
        super("quark.spi_api_tracing.RuntimeProxy");
        (this).name = "quark.spi_api_tracing.RuntimeProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Runtime", "impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_RuntimeProxy_open_Method(), new quark_spi_api_tracing_RuntimeProxy_request_Method(), new quark_spi_api_tracing_RuntimeProxy_schedule_Method(), new quark_spi_api_tracing_RuntimeProxy_codec_Method(), new quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method(), new quark_spi_api_tracing_RuntimeProxy_serveWS_Method(), new quark_spi_api_tracing_RuntimeProxy_respond_Method(), new quark_spi_api_tracing_RuntimeProxy_fail_Method(), new quark_spi_api_tracing_RuntimeProxy_logger_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.RuntimeProxy((quark.Runtime) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
