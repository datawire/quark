package quark_md;

public class quark_concurrent_Queue_quark_concurrent_Event_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_Queue_quark_concurrent_Event_();
    public quark_concurrent_Queue_quark_concurrent_Event_() {
        super("quark.concurrent.Queue<quark.concurrent.Event>");
        (this).name = "quark.concurrent.Queue";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.concurrent.Event"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.List<quark.Object>", "items"), new quark.reflect.Field("quark.int", "head"), new quark.reflect.Field("quark.int", "tail")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_Queue_quark_concurrent_Event__put_Method(), new quark_concurrent_Queue_quark_concurrent_Event__get_Method(), new quark_concurrent_Queue_quark_concurrent_Event__size_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.Queue<quark.concurrent.Event>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
