package box_md;

public class builtin_Client_getRuntime_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_Client_getRuntime_Method() {
        super("builtin.Runtime", "getRuntime", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.Client obj = (builtin.Client) (object);
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
