package builtin_md;

public class builtin_concurrent_Queue_builtin_concurrent_Event__size_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_Queue_builtin_concurrent_Event__size_Method() {
        super("builtin.int", "size", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.Queue<builtin.concurrent.Event> obj = (builtin.concurrent.Queue<builtin.concurrent.Event>) (object);
        return (obj).size();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
