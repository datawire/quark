package box_md;

public class box_Crate_quark_String_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new box_Crate_quark_String_();
    public box_Crate_quark_String_() {
        super("box.Crate<quark.String>");
        (this).name = "box.Crate";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("box.Box<quark.Object>", "box"), new quark.reflect.Field("box.Box<quark.int>", "ibox")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new box_Crate_quark_String__set_Method(), new box_Crate_quark_String__get_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new box.Crate<String>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
