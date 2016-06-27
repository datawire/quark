package quark_ffi_signatures_md;

public class inheritance_super__B extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_super__B();
    public inheritance_super__B() {
        super("inheritance.super_.B");
        (this).name = "inheritance.super_.B";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritance_super__B_greet_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"inheritance.super_.A"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.super_.B();
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
