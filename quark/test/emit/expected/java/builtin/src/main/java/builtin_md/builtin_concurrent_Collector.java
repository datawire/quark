package builtin_md;

public class builtin_concurrent_Collector extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_Collector();
    public builtin_concurrent_Collector() {
        super("builtin.concurrent.Collector");
        (this).name = "Collector";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Lock", "lock"), new builtin.reflect.Field("builtin.concurrent.Queue<builtin.concurrent.Event>", "pending"), new builtin.reflect.Field("builtin.concurrent.CollectorExecutor", "executor"), new builtin.reflect.Field("builtin.bool", "idle")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_Collector_put_Method(), new builtin_concurrent_Collector__swap_Method(), new builtin_concurrent_Collector__poll_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.Collector();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
