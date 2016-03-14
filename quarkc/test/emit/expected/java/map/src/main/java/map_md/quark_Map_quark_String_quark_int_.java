package map_md;

public class quark_Map_quark_String_quark_int_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_Map_quark_String_quark_int_();
    public quark_Map_quark_String_quark_int_() {
        super("quark.Map<quark.String,quark.int>");
        (this).name = "quark.Map";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String", "quark.int"}));
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
