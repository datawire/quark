package delegate_md;

public class delegate_Test_hello_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public delegate_Test_hello_Method() {
        super("delegate.Pong", "hello", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"delegate.Ping"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        delegate.Test obj = (delegate.Test) (object);
        return (obj).hello((delegate.Ping) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
