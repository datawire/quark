package constructors_md;

public class test3_Box_builtin_String_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new test3_Box_builtin_String_();
    public test3_Box_builtin_String_() {
        super("test3.Box<builtin.String>");
        (this).name = "Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new test3_Box_builtin_String__get_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new test3.Box<String>((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
