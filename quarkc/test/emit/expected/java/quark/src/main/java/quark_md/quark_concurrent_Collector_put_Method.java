package quark_md;

public class quark_concurrent_Collector_put_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Collector_put_Method() {
        super("quark.void", "put", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.concurrent.Event"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Collector obj = (quark.concurrent.Collector) (object);
        (obj).put((quark.concurrent.Event) ((args).get(0)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
