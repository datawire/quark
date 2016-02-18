package builtin_md;

public class builtin_Client extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_Client();
    public builtin_Client() {
        super("builtin.Client");
        (this).name = "builtin.Client";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.Resolver", "resolver"), new builtin.reflect.Field("builtin.String", "serviceName"), new builtin.reflect.Field("builtin.float", "_timeout"), new builtin.reflect.Field("builtin.int", "_failureLimit"), new builtin.reflect.Field("builtin.float", "_retestDelay"), new builtin.reflect.Field("builtin.concurrent.Lock", "mutex"), new builtin.reflect.Field("builtin.Map<builtin.String,builtin.ServiceInstance>", "instanceMap"), new builtin.reflect.Field("builtin.int", "counter")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.Client((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
