package builtin_md;

public class builtin_concurrent_Timeout extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_Timeout();
    public builtin_concurrent_Timeout() {
        super("builtin.concurrent.Timeout");
        (this).name = "builtin.concurrent.Timeout";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Context", "_context"), new builtin.reflect.Field("builtin.float", "timeout"), new builtin.reflect.Field("builtin.concurrent.Lock", "lock"), new builtin.reflect.Field("builtin.concurrent.TimeoutListener", "listener")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_Timeout_start_Method(), new builtin_concurrent_Timeout_cancel_Method(), new builtin_concurrent_Timeout_onExecute_Method(), new builtin_concurrent_Timeout_getContext_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.Timeout((Double) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
