package quark_ffi_signatures_md;

public class generics_pkg_StringFoo extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new generics_pkg_StringFoo();
    public generics_pkg_StringFoo() {
        super("generics.pkg.StringFoo");
        (this).name = "generics.pkg.StringFoo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new generics_pkg_StringFoo_get_Method(), new generics_pkg_StringFoo_foo_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new generics.pkg.StringFoo();
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
