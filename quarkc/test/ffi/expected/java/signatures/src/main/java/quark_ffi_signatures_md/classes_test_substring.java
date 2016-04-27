package quark_ffi_signatures_md;

public class classes_test_substring extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new classes_test_substring();
    public classes_test_substring() {
        super("classes.test_substring");
        (this).name = "classes.test_substring";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.int", "start"), new quark.reflect.Field("quark.int", "end")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new classes_test_substring_that_Method(), new classes_test_substring_does_Method(), new classes_test_substring_check_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new classes.test_substring((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
