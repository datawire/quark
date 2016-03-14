package quark_md;

public class quark_concurrent_CollectorExecutor extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_CollectorExecutor();
    public quark_concurrent_CollectorExecutor() {
        super("quark.concurrent.CollectorExecutor");
        (this).name = "quark.concurrent.CollectorExecutor";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Queue<quark.concurrent.Event>", "events"), new quark.reflect.Field("quark.concurrent.Collector", "collector")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_CollectorExecutor__start_Method(), new quark_concurrent_CollectorExecutor_onExecute_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.CollectorExecutor((quark.concurrent.Collector) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
