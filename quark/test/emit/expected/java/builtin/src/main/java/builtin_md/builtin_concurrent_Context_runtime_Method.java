package builtin_md;

public class builtin_concurrent_Context_runtime_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_Context_runtime_Method() {
        super("builtin.Runtime", "runtime", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.Context obj = (builtin.concurrent.Context) (object);
        return builtin.concurrent.Context.runtime();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
