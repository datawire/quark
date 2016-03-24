package quark_md;

public class quark_concurrent_Future_onFinished_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_concurrent_Future_onFinished_Method() {
        super("quark.void", "onFinished", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.concurrent.FutureListener"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.concurrent.Future obj = (quark.concurrent.Future) (object);
        (obj).onFinished((quark.concurrent.FutureListener) ((args).get(0)));
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
