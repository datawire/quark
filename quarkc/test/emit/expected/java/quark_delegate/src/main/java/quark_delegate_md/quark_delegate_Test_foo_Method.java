package quark_delegate_md;

public class quark_delegate_Test_foo_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_delegate_Test_foo_Method() {
        super("quark.void", "foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String", "quark.String", "quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark_delegate.Test obj = (quark_delegate.Test) (object);
        (obj).foo((String) ((args).get(0)), (String) ((args).get(1)), (Integer) ((args).get(2)));
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
