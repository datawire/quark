package quark_md;

public class quark_concurrent_Future_getError_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Future_getError_Method() {
        super("quark.String", "getError", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Future obj = (quark.concurrent.Future) (object);
        return (obj).getError();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
