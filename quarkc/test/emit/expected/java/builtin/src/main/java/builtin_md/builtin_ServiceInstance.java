package builtin_md;

public class builtin_ServiceInstance extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_ServiceInstance();
    public builtin_ServiceInstance() {
        super("builtin.ServiceInstance");
        (this).name = "builtin.ServiceInstance";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "serviceName"), new builtin.reflect.Field("builtin.String", "url"), new builtin.reflect.Field("builtin.behaviors.CircuitBreaker", "breaker")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.ServiceInstance((String) ((args).get(0)), (String) ((args).get(1)), (Integer) ((args).get(2)), (Double) ((args).get(3)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
