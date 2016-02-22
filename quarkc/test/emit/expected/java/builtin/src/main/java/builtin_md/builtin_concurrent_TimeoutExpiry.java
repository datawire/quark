package builtin_md;

public class builtin_concurrent_TimeoutExpiry extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_TimeoutExpiry();
    public builtin_concurrent_TimeoutExpiry() {
        super("builtin.concurrent.TimeoutExpiry");
        (this).name = "builtin.concurrent.TimeoutExpiry";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Timeout", "timeout"), new builtin.reflect.Field("builtin.concurrent.TimeoutListener", "listener")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_TimeoutExpiry_getContext_Method(), new builtin_concurrent_TimeoutExpiry_fireEvent_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.TimeoutExpiry((builtin.concurrent.Timeout) ((args).get(0)), (builtin.concurrent.TimeoutListener) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
