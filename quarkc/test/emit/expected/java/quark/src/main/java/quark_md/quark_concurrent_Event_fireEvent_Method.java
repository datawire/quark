package quark_md;

public class quark_concurrent_Event_fireEvent_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Event_fireEvent_Method() {
        super("quark.void", "fireEvent", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Event obj = (quark.concurrent.Event) (object);
        (obj).fireEvent();
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
