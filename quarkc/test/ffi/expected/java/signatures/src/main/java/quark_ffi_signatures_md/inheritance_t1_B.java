package quark_ffi_signatures_md;

public class inheritance_t1_B extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_t1_B();
    public inheritance_t1_B() {
        super("inheritance.t1.B");
        (this).name = "inheritance.t1.B";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritance_t1_B_foo_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.get("inheritance.t1.A")}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.t1.B();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
