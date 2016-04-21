package quark_md;

public class quark_logging_Config_configure_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_logging_Config_configure_Method() {
        super("quark.void", "configure", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.logging.Config obj = (quark.logging.Config) (object);
        (obj).configure();
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
