package quark_ffi_signatures_md;

public class classes_stuff_Test_foo_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_stuff_Test_foo_Method() {
        super("classes.stuff.Test", "foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"classes.stuff.Test"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.stuff.Test obj = (classes.stuff.Test) (object);
        return (obj).foo((classes.stuff.Test) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
