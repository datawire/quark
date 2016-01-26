package builtin_md;

public class builtin_concurrent_TimeoutListener_onTimeout_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_TimeoutListener_onTimeout_Method() {
        super("builtin.void", "onTimeout", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.Timeout"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.TimeoutListener obj = (builtin.concurrent.TimeoutListener) (object);
        (obj).onTimeout((builtin.concurrent.Timeout) ((args).get(0)));
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
