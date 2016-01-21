package static_md;

public class builtin_Client extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new builtin_Client();
    public builtin_Client() {
        super("builtin.Client");
        (this).name = "Client";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("builtin.Runtime", "runtime"), new reflect.Field("builtin.String", "url"), new reflect.Field("builtin.long", "timeout")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_Client_getRuntime_Method(), new builtin_Client_getURL_Method(), new builtin_Client_getTimeout_Method(), new builtin_Client_setTimeout_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.Client((io.datawire.quark.runtime.Runtime) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
