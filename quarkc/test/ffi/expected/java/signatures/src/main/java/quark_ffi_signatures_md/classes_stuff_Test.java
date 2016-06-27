package quark_ffi_signatures_md;

public class classes_stuff_Test extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new classes_stuff_Test();
    public classes_stuff_Test() {
        super("classes.stuff.Test");
        (this).name = "classes.stuff.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new classes_stuff_Test_foo_Method(), new classes_stuff_Test_test_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new classes.stuff.Test();
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
