package quark_ffi_signatures_md;

public class inheritance_t1_C extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_t1_C();
    public inheritance_t1_C() {
        super("inheritance.t1.C");
        (this).name = "inheritance.t1.C";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritance_t1_C_foo_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"inheritance.t1.A"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.t1.C();
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
