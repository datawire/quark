package quark_md;

public class quark_spi_RuntimeApi_respond_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_RuntimeApi_respond_Method() {
        super("quark.void", "respond", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.HTTPRequest", "quark.HTTPResponse"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi.RuntimeApi obj = (quark.spi.RuntimeApi) (object);
        (obj).respond((quark.HTTPRequest) ((args).get(0)), (quark.HTTPResponse) ((args).get(1)));
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
