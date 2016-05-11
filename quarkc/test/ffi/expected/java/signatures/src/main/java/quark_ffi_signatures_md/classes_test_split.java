package quark_ffi_signatures_md;

public class classes_test_split extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new classes_test_split();
    public classes_test_split() {
        super("classes.test_split");
        (this).name = "classes.test_split";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.String", "sep"), new quark.reflect.Field("quark.String", "altsep")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new classes_test_split_that_Method(), new classes_test_split_does_Method(), new classes_test_split_check_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new classes.test_split((String) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
