package string_methods_md;

public class string_methods_string_test extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new string_methods_string_test();
    public string_methods_string_test() {
        super("string_methods.string_test");
        (this).name = "string_methods.string_test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new string_methods_string_test_check_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new string_methods.string_test();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
