package quark_md;

public class quark_concurrent_Queue_quark_concurrent_Event__size_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Queue_quark_concurrent_Event__size_Method() {
        super("quark.int", "size", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Queue<quark.concurrent.Event> obj = (quark.concurrent.Queue<quark.concurrent.Event>) (object);
        return (obj).size();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
