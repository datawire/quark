package quark_ffi_signatures_md;

public class classes_Overload extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new classes_Overload();
    public classes_Overload() {
        super("classes.Overload");
        (this).name = "classes.Overload";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new classes_Overload___add___Method(), new classes_Overload___mul___Method(), new classes_Overload_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new classes.Overload((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
