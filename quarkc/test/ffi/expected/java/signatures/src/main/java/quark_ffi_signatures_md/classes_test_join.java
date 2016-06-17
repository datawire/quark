package quark_ffi_signatures_md;

public class classes_test_join extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new classes_test_join();
    public classes_test_join() {
        super("classes.test_join");
        (this).name = "classes.test_join";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.List<quark.String>", "parts"), new quark.reflect.Field("quark.String", "strparts"), new quark.reflect.Field("quark.String", "sep")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new classes_test_join_that_Method(), new classes_test_join_a_Method(), new classes_test_join_does_Method(), new classes_test_join_check_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.get("classes.string_test")}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new classes.test_join((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
