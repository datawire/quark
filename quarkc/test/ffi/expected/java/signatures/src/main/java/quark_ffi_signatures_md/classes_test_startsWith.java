package quark_ffi_signatures_md;

public class classes_test_startsWith extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new classes_test_startsWith();
    public classes_test_startsWith() {
        super("classes.test_startsWith");
        (this).name = "classes.test_startsWith";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "what"), new quark.reflect.Field("quark.String", "_that")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new classes_test_startsWith_that_Method(), new classes_test_startsWith_does_Method(), new classes_test_startsWith_check_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"classes.string_test"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new classes.test_startsWith((String) ((args).get(0)));
    }
    public Boolean isAbstract() {
        return false;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
