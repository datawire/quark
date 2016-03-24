package quark_md;

public class quark_concurrent_EventContext_getContext_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_EventContext_getContext_Method() {
        super("quark.concurrent.Context", "getContext", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.EventContext obj = (quark.concurrent.EventContext) (object);
        return (obj).getContext();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
