package quark_md;

public class quark_concurrent_FutureListener_onFuture_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_FutureListener_onFuture_Method() {
        super("quark.void", "onFuture", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.concurrent.Future"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.FutureListener obj = (quark.concurrent.FutureListener) (object);
        (obj).onFuture((quark.concurrent.Future) ((args).get(0)));
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
