package quark_md;

public class quark_concurrent_Collector extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_Collector();
    public quark_concurrent_Collector() {
        super("quark.concurrent.Collector");
        (this).name = "quark.concurrent.Collector";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Lock", "lock"), new quark.reflect.Field("quark.concurrent.Queue<quark.concurrent.Event>", "pending"), new quark.reflect.Field("quark.concurrent.CollectorExecutor", "executor"), new quark.reflect.Field("quark.bool", "idle")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_Collector_put_Method(), new quark_concurrent_Collector__swap_Method(), new quark_concurrent_Collector__poll_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.Collector();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
