package quark_md;

public class quark_concurrent_Context_global_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Context_global_Method() {
        super("quark.concurrent.Context", "global", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Context obj = (quark.concurrent.Context) (object);
        return quark.concurrent.Context.global();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
