package parameterized_defaults_md;

public class pkg_Foo_builtin_Object_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new pkg_Foo_builtin_Object_();
    public pkg_Foo_builtin_Object_() {
        super("pkg.Foo<builtin.Object>");
        (this).name = "pkg.Foo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_Foo_builtin_Object__foo_Method(), new pkg_Foo_builtin_Object__get_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
