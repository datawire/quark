package builtin_md;

public class builtin_concurrent_Future_onFinished_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_Future_onFinished_Method() {
        super("builtin.void", "onFinished", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.FutureListener"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.Future obj = (builtin.concurrent.Future) (object);
        (obj).onFinished((builtin.concurrent.FutureListener) ((args).get(0)));
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
