package box_md;

public class box_Box_builtin_String_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new box_Box_builtin_String_();
    public box_Box_builtin_String_() {
        super("box.Box<builtin.String>");
        (this).name = "box.Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new box_Box_builtin_String__set_Method(), new box_Box_builtin_String__get_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new box.Box<String>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
