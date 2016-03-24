package quark_md;

public class quark_concurrent_Timeout_start_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Timeout_start_Method() {
        super("quark.void", "start", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.concurrent.TimeoutListener"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Timeout obj = (quark.concurrent.Timeout) (object);
        (obj).start((quark.concurrent.TimeoutListener) ((args).get(0)));
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
