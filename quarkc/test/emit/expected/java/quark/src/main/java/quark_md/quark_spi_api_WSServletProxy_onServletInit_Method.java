package quark_md;

public class quark_spi_api_WSServletProxy_onServletInit_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_api_WSServletProxy_onServletInit_Method() {
        super("quark.void", "onServletInit", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String", "quark.Runtime"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi_api.WSServletProxy obj = (quark.spi_api.WSServletProxy) (object);
        (obj).onServletInit((String) ((args).get(0)), (quark.Runtime) ((args).get(1)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
