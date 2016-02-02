package builtin_md;

public class builtin_concurrent_Context extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_Context();
    public builtin_concurrent_Context() {
        super("builtin.concurrent.Context");
        (this).name = "builtin.concurrent.Context";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Context", "_global"), new builtin.reflect.Field("builtin.concurrent.TLS<builtin.concurrent.Context>", "_current"), new builtin.reflect.Field("builtin.concurrent.Context", "_parent"), new builtin.reflect.Field("builtin.Runtime", "_runtime"), new builtin.reflect.Field("builtin.concurrent.Collector", "collector")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_Context_current_Method(), new builtin_concurrent_Context_global_Method(), new builtin_concurrent_Context_runtime_Method(), new builtin_concurrent_Context_swap_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.Context((builtin.concurrent.Context) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
