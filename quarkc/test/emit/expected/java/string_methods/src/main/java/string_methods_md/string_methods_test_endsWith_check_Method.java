package string_methods_md;

public class string_methods_test_endsWith_check_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public string_methods_test_endsWith_check_Method() {
        super("builtin.void", "check", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String", "builtin.String", "builtin.String", "builtin.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        string_methods.test_endsWith obj = (string_methods.test_endsWith) (object);
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
