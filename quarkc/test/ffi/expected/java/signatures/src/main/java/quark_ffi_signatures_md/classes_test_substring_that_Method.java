package quark_ffi_signatures_md;

public class classes_test_substring_that_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_test_substring_that_Method() {
        super("classes.test_substring", "that", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int", "quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.test_substring obj = (classes.test_substring) (object);
        return (obj).that((Integer) ((args).get(0)), (Integer) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
