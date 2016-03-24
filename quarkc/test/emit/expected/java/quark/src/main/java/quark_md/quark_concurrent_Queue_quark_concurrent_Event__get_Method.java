package quark_md;

public class quark_concurrent_Queue_quark_concurrent_Event__get_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Queue_quark_concurrent_Event__get_Method() {
        super("quark.concurrent.Event", "get", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Queue<quark.concurrent.Event> obj = (quark.concurrent.Queue<quark.concurrent.Event>) (object);
        return (obj).get();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
