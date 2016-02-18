package builtin_md;

public class builtin_concurrent_FutureWait_wait_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_FutureWait_wait_Method() {
        super("builtin.void", "wait", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.Future", "builtin.float"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.FutureWait obj = (builtin.concurrent.FutureWait) (object);
        (obj).wait((builtin.concurrent.Future) ((args).get(0)), (Double) ((args).get(1)));
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
