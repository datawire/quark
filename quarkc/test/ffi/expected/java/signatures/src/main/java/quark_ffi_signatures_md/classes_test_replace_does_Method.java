package quark_ffi_signatures_md;

public class classes_test_replace_does_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_test_replace_does_Method() {
        super("classes.test_replace", "does", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.test_replace obj = (classes.test_replace) (object);
        return (obj).does((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
