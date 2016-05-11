package quark_ffi_signatures_md;

public class classes_test_size_does_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_test_size_does_Method() {
        super("classes.test_size", "does", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.test_size obj = (classes.test_size) (object);
        return (obj).does((Integer) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
