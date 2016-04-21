package quark_md;

public class quark_spi_api_ServletProxy_onServletError_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_api_ServletProxy_onServletError_Method() {
        super("quark.void", "onServletError", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String", "quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi_api.ServletProxy obj = (quark.spi_api.ServletProxy) (object);
        (obj).onServletError((String) ((args).get(0)), (String) ((args).get(1)));
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
