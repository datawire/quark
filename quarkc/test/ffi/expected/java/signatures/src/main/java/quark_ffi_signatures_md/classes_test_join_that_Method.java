package quark_ffi_signatures_md;

public class classes_test_join_that_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_test_join_that_Method() {
        super("classes.test_join", "that", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.test_join obj = (classes.test_join) (object);
        return (obj).that();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
