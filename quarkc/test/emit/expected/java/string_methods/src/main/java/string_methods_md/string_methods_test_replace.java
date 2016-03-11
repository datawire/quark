package string_methods_md;

public class string_methods_test_replace extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new string_methods_test_replace();
    public string_methods_test_replace() {
        super("string_methods.test_replace");
        (this).name = "string_methods.test_replace";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.String", "start"), new builtin.reflect.Field("builtin.String", "end")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new string_methods_test_replace_that_Method(), new string_methods_test_replace_does_Method(), new string_methods_test_replace_check_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new string_methods.test_replace((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
