package builtin_md;

public class builtin_concurrent_FutureWait_waitFor_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_FutureWait_waitFor_Method() {
        super("builtin.concurrent.Future", "waitFor", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.Future", "builtin.long"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.FutureWait obj = (builtin.concurrent.FutureWait) (object);
        return builtin.concurrent.FutureWait.waitFor((builtin.concurrent.Future) ((args).get(0)), (Long) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
