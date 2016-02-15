package builtin_md;

public class builtin_concurrent_TimeoutExpiry_fireEvent_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_TimeoutExpiry_fireEvent_Method() {
        super("builtin.void", "fireEvent", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.TimeoutExpiry obj = (builtin.concurrent.TimeoutExpiry) (object);
        (obj).fireEvent();
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
