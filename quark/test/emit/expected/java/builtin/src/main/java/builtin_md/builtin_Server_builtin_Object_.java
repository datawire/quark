package builtin_md;

public class builtin_Server_builtin_Object_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_Server_builtin_Object_();
    public builtin_Server_builtin_Object_() {
        super("builtin.Server<builtin.Object>");
        (this).name = "builtin.Server";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.Object", "impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.Server<Object>((args).get(0));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
