package quark_md;

public class quark_concurrent_Context_current_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Context_current_Method() {
        super("quark.concurrent.Context", "current", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Context obj = (quark.concurrent.Context) (object);
        return quark.concurrent.Context.current();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
