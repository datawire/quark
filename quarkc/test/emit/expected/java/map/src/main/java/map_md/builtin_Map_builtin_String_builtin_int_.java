package map_md;

public class builtin_Map_builtin_String_builtin_int_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_Map_builtin_String_builtin_int_();
    public builtin_Map_builtin_String_builtin_int_() {
        super("builtin.Map<builtin.String,builtin.int>");
        (this).name = "builtin.Map";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String", "builtin.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new java.util.HashMap<String,Integer>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
