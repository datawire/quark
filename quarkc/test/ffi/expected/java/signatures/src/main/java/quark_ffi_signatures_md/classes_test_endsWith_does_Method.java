package quark_ffi_signatures_md;

public class classes_test_endsWith_does_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_test_endsWith_does_Method() {
        super("classes.test_endsWith", "does", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.bool"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.test_endsWith obj = (classes.test_endsWith) (object);
        return (obj).does((Boolean) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
