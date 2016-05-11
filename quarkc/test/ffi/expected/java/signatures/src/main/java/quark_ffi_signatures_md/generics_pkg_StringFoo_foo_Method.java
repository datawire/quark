package quark_ffi_signatures_md;

public class generics_pkg_StringFoo_foo_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public generics_pkg_StringFoo_foo_Method() {
        super("quark.String", "foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        generics.pkg.StringFoo obj = (generics.pkg.StringFoo) (object);
        return (obj).foo();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
