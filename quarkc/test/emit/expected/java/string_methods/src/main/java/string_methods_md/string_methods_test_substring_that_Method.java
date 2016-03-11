package string_methods_md;

public class string_methods_test_substring_that_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public string_methods_test_substring_that_Method() {
        super("string_methods.test_substring", "that", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int", "builtin.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        string_methods.test_substring obj = (string_methods.test_substring) (object);
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
