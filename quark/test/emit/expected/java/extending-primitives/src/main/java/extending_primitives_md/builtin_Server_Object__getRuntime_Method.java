package extending_primitives_md;

public class builtin_Server_Object__getRuntime_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_Server_Object__getRuntime_Method() {
        super("builtin.Runtime", "getRuntime", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.Server<Object> obj = (builtin.Server<Object>) (object);
        return (obj).getRuntime();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
