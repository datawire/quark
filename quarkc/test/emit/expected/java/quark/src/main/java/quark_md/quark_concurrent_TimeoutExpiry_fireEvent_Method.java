package quark_md;

public class quark_concurrent_TimeoutExpiry_fireEvent_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_TimeoutExpiry_fireEvent_Method() {
        super("quark.void", "fireEvent", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.TimeoutExpiry obj = (quark.concurrent.TimeoutExpiry) (object);
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
