package quark_md;

public class quark_concurrent_Collector__swap_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Collector__swap_Method() {
        super("quark.concurrent.Queue<quark.concurrent.Event>", "_swap", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.concurrent.Queue<quark.concurrent.Event>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Collector obj = (quark.concurrent.Collector) (object);
        return (obj)._swap((quark.concurrent.Queue<quark.concurrent.Event>) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
