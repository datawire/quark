package parameterized_defaults_md;

public class pkg_Box_builtin_String_ extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new pkg_Box_builtin_String_();
    public pkg_Box_builtin_String_() {
        super("pkg.Box<builtin.String>");
        (this).name = "Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("builtin.String", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.Box<String>((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
