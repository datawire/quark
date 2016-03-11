package string_methods_md;

public class string_methods_test_replace_that_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public string_methods_test_replace_that_Method() {
        super("string_methods.test_replace", "that", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String", "builtin.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        string_methods.test_replace obj = (string_methods.test_replace) (object);
        return (obj).that((String) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
