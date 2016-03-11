package string_methods_md;

public class string_methods_test_split extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new string_methods_test_split();
    public string_methods_test_split() {
        super("string_methods.test_split");
        (this).name = "string_methods.test_split";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "what"), new builtin.reflect.Field("builtin.String", "sep"), new builtin.reflect.Field("builtin.String", "altsep")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new string_methods_test_split_that_Method(), new string_methods_test_split_does_Method(), new string_methods_test_split_check_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new string_methods.test_split((String) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
