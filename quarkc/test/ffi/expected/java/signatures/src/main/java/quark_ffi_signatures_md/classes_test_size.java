package quark_ffi_signatures_md;

public class classes_test_size extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new classes_test_size();
    public classes_test_size() {
        super("classes.test_size");
        (this).name = "classes.test_size";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "what")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new classes_test_size_does_Method(), new classes_test_size_check_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new classes.test_size((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
