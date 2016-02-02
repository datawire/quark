package builtin_md;

public class builtin_concurrent_CollectorExecutor extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_CollectorExecutor();
    public builtin_concurrent_CollectorExecutor() {
        super("builtin.concurrent.CollectorExecutor");
        (this).name = "builtin.concurrent.CollectorExecutor";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Queue<builtin.concurrent.Event>", "events"), new builtin.reflect.Field("builtin.concurrent.Collector", "collector")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_CollectorExecutor__start_Method(), new builtin_concurrent_CollectorExecutor_onExecute_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.CollectorExecutor((builtin.concurrent.Collector) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
