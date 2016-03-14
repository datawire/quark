package list_md;

public class list_Box_quark_int_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new list_Box_quark_int_();
    public list_Box_quark_int_() {
        super("list.Box<quark.int>");
        (this).name = "list.Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.int", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new list_Box_quark_int__get_Method(), new list_Box_quark_int__set_Method()}));
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
