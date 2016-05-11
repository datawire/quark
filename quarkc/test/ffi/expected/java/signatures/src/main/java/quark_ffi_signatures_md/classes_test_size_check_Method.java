package quark_ffi_signatures_md;

public class classes_test_size_check_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public classes_test_size_check_Method() {
        super("quark.void", "check", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String", "quark.String", "quark.String", "quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        classes.test_size obj = (classes.test_size) (object);
        (obj).check((String) ((args).get(0)), (String) ((args).get(1)), (String) ((args).get(2)), (String) ((args).get(3)));
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
