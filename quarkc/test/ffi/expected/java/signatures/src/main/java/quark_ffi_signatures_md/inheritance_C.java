package quark_ffi_signatures_md;

public class inheritance_C extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_C();
    public inheritance_C() {
        super("inheritance.C");
        (this).name = "inheritance.C";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritance_C_greet_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"inheritance.A"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.C((String) ((args).get(0)));
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
