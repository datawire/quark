package extending_primitives_md;

public class Map_String_reflect_Class_ extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new Map_String_reflect_Class_();
    public Map_String_reflect_Class_() {
        super("Map<String,reflect.Class>");
        (this).name = "Map";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"String", "reflect.Class"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new java.util.HashMap<String,reflect.Class>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
