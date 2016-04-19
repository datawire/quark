package quark_md;

public class quark_spi_api_tracing_HTTPServletProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_HTTPServletProxy();
    public quark_spi_api_tracing_HTTPServletProxy() {
        super("quark.spi_api_tracing.HTTPServletProxy");
        (this).name = "quark.spi_api_tracing.HTTPServletProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.spi_api_tracing.RuntimeProxy", "real_runtime"), new quark.reflect.Field("quark.HTTPServlet", "http_servlet_impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method(), new quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method(), new quark_spi_api_tracing_HTTPServletProxy_onServletError_Method(), new quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method(), new quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.HTTPServletProxy((io.datawire.quark.runtime.Logger) ((args).get(0)), (quark.spi_api_tracing.RuntimeProxy) ((args).get(1)), (quark.HTTPServlet) ((args).get(2)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
