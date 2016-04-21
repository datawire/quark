package quark_md;

public class quark_spi_api_ServletProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_ServletProxy();
    public quark_spi_api_ServletProxy() {
        super("quark.spi_api.ServletProxy");
        (this).name = "quark.spi_api.ServletProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.Runtime", "real_runtime")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_ServletProxy_onServletInit_Method(), new quark_spi_api_ServletProxy_onServletError_Method(), new quark_spi_api_ServletProxy_onServletEnd_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api.ServletProxy((quark.Runtime) ((args).get(0)), (quark.Servlet) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
