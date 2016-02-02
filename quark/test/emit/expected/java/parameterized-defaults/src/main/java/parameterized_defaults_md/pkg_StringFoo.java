package parameterized_defaults_md;

public class pkg_StringFoo extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new pkg_StringFoo();
    public pkg_StringFoo() {
        super("pkg.StringFoo");
        (this).name = "pkg.StringFoo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_StringFoo_get_Method(), new pkg_StringFoo_foo_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.StringFoo();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
