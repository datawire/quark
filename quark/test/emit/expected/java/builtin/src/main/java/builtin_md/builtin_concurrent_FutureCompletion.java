package builtin_md;

public class builtin_concurrent_FutureCompletion extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_FutureCompletion();
    public builtin_concurrent_FutureCompletion() {
        super("builtin.concurrent.FutureCompletion");
        (this).name = "FutureCompletion";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Future", "future"), new builtin.reflect.Field("builtin.concurrent.FutureListener", "listener")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_FutureCompletion_getContext_Method(), new builtin_concurrent_FutureCompletion_fireEvent_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.FutureCompletion((builtin.concurrent.Future) ((args).get(0)), (builtin.concurrent.FutureListener) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
