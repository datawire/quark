package parameterized_defaults_md;

public class pkg_Foo_builtin_Object__foo_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public pkg_Foo_builtin_Object__foo_Method() {
        super("builtin.Object", "foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        pkg.Foo<Object> obj = (pkg.Foo<Object>) (object);
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
