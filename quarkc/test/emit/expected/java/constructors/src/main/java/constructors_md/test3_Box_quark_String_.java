package constructors_md;

public class test3_Box_quark_String_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new test3_Box_quark_String_();
    public test3_Box_quark_String_() {
        super("test3.Box<quark.String>");
        (this).name = "test3.Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new test3_Box_quark_String__get_Method()}));
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
