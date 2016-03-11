package list_md;

public class builtin_List_builtin_int_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_List_builtin_int_();
    public builtin_List_builtin_int_() {
        super("builtin.List<builtin.int>");
        (this).name = "builtin.List";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new java.util.ArrayList<Integer>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
