package list_md;

public class list_Box_builtin_int_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new list_Box_builtin_int_();
    public list_Box_builtin_int_() {
        super("list.Box<builtin.int>");
        (this).name = "list.Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.int", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new list_Box_builtin_int__get_Method(), new list_Box_builtin_int__set_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new list.Box<Integer>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
