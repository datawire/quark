package quark_md;

public class quark_concurrent_TimeoutListener_onTimeout_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_TimeoutListener_onTimeout_Method() {
        super("quark.void", "onTimeout", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.concurrent.Timeout"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.TimeoutListener obj = (quark.concurrent.TimeoutListener) (object);
        (obj).onTimeout((quark.concurrent.Timeout) ((args).get(0)));
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
