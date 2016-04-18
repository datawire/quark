package quark_md;

public class quark_spi_WSServletProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_WSServletProxy();
    public quark_spi_WSServletProxy() {
        super("quark.spi.WSServletProxy");
        (this).name = "quark.spi.WSServletProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.Runtime", "real_runtime"), new quark.reflect.Field("quark.WSServlet", "ws_servlet_impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_WSServletProxy_onWSConnect_Method(), new quark_spi_WSServletProxy_onServletInit_Method(), new quark_spi_WSServletProxy_onServletError_Method(), new quark_spi_WSServletProxy_onServletEnd_Method(), new quark_spi_WSServletProxy_serveWS_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi.WSServletProxy((quark.Runtime) ((args).get(0)), (quark.WSServlet) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
