package parameterized_defaults_md;

public class pkg_Foo_Object_ extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new pkg_Foo_Object_();
    public pkg_Foo_Object_() {
        super("pkg.Foo<Object>");
        (this).name = "Foo";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_Foo_Object__foo_Method(), new pkg_Foo_Object__get_Method()}));
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
