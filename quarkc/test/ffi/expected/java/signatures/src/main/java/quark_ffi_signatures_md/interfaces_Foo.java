package quark_ffi_signatures_md;

public class interfaces_Foo extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new interfaces_Foo();
    public interfaces_Foo() {
        super("interfaces.Foo");
        (this).name = "interfaces.Foo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new interfaces_Foo_m1_Method(), new interfaces_Foo_m2_Method(), new interfaces_Foo_m3_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return null;
    }
    public Boolean isAbstract() {
        return true;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
