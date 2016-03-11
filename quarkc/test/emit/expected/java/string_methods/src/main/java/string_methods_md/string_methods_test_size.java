package string_methods_md;

public class string_methods_test_size extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new string_methods_test_size();
    public string_methods_test_size() {
        super("string_methods.test_size");
        (this).name = "string_methods.test_size";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "what")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new string_methods_test_size_does_Method(), new string_methods_test_size_check_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new string_methods.test_size((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
