package builtin_md;

public class builtin_List_Object_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_List_Object_();
    public builtin_List_Object_() {
        super("builtin.List<Object>");
        (this).name = "builtin.List";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new java.util.ArrayList<Object>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
