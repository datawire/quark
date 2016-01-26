package builtin_md;

public class builtin_concurrent_Collector__swap_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_Collector__swap_Method() {
        super("builtin.concurrent.Queue<builtin.concurrent.Event>", "_swap", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.Queue<builtin.concurrent.Event>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.Collector obj = (builtin.concurrent.Collector) (object);
        return (obj)._swap((builtin.concurrent.Queue<builtin.concurrent.Event>) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
