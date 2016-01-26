package builtin_md;

public class builtin_concurrent_FutureWait extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_FutureWait();
    public builtin_concurrent_FutureWait() {
        super("builtin.concurrent.FutureWait");
        (this).name = "FutureWait";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Condition", "_lock"), new builtin.reflect.Field("builtin.concurrent.Future", "_future")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_FutureWait_wait_Method(), new builtin_concurrent_FutureWait_onFuture_Method(), new builtin_concurrent_FutureWait_waitFor_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.FutureWait();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
