package string_methods_md;

public class string_methods_test_join_that_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public string_methods_test_join_that_Method() {
        super("string_methods.test_join", "that", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        string_methods.test_join obj = (string_methods.test_join) (object);
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
