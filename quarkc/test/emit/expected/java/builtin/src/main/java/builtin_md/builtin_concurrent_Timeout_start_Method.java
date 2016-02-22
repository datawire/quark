package builtin_md;

public class builtin_concurrent_Timeout_start_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_Timeout_start_Method() {
        super("builtin.void", "start", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.TimeoutListener"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.Timeout obj = (builtin.concurrent.Timeout) (object);
        (obj).start((builtin.concurrent.TimeoutListener) ((args).get(0)));
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
