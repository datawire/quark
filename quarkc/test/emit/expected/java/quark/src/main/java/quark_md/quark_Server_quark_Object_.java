package quark_md;

public class quark_Server_quark_Object_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_Server_quark_Object_();
    public quark_Server_quark_Object_() {
        super("quark.Server<quark.Object>");
        (this).name = "quark.Server";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.Object", "impl"), new quark.reflect.Field("quark.bool", "_sendCORS")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.Server<Object>((args).get(0));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
