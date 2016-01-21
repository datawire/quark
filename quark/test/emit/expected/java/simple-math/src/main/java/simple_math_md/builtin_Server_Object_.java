package simple_math_md;

public class builtin_Server_Object_ extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new builtin_Server_Object_();
    public builtin_Server_Object_() {
        super("builtin.Server<Object>");
        (this).name = "Server";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("builtin.Runtime", "runtime"), new reflect.Field("Object", "impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_Server_Object__getRuntime_Method(), new builtin_Server_Object__onHTTPRequest_Method(), new builtin_Server_Object__onServletError_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.Server<Object>((io.datawire.quark.runtime.Runtime) ((args).get(0)), (args).get(1));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
