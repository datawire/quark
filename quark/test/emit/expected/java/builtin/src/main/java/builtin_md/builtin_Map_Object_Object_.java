package builtin_md;

public class builtin_Map_Object_Object_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_Map_Object_Object_();
    public builtin_Map_Object_Object_() {
        super("builtin.Map<Object,Object>");
        (this).name = "builtin.Map";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"Object", "Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new java.util.HashMap<Object,Object>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
