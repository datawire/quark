package builtin_md;

public class builtin_concurrent_Queue_builtin_concurrent_Event_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_Queue_builtin_concurrent_Event_();
    public builtin_concurrent_Queue_builtin_concurrent_Event_() {
        super("builtin.concurrent.Queue<builtin.concurrent.Event>");
        (this).name = "Queue";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.Event"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.List<Object>", "items"), new builtin.reflect.Field("builtin.int", "head"), new builtin.reflect.Field("builtin.int", "tail")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_Queue_builtin_concurrent_Event__put_Method(), new builtin_concurrent_Queue_builtin_concurrent_Event__get_Method(), new builtin_concurrent_Queue_builtin_concurrent_Event__size_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.Queue<builtin.concurrent.Event>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
