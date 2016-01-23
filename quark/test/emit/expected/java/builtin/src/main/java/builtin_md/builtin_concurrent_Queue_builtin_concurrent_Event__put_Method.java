package builtin_md;

public class builtin_concurrent_Queue_builtin_concurrent_Event__put_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_Queue_builtin_concurrent_Event__put_Method() {
        super("builtin.void", "put", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.Event"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.Queue<builtin.concurrent.Event> obj = (builtin.concurrent.Queue<builtin.concurrent.Event>) (object);
        (obj).put((builtin.concurrent.Event) ((args).get(0)));
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
