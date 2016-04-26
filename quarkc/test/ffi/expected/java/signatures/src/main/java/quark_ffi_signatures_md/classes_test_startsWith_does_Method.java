package quark_ffi_signatures_md;

public class classes_test_startsWith_does_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_test_startsWith_does_Method() {
        super("classes.test_startsWith", "does", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.bool"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.test_startsWith obj = (classes.test_startsWith) (object);
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
