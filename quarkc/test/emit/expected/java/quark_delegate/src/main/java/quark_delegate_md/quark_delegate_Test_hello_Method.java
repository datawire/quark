package quark_delegate_md;

public class quark_delegate_Test_hello_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_delegate_Test_hello_Method() {
        super("quark_delegate.Pong", "hello", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark_delegate.Ping"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark_delegate.Test obj = (quark_delegate.Test) (object);
        return (obj).hello((quark_delegate.Ping) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
