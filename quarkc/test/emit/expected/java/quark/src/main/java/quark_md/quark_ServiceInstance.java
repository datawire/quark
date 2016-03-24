package quark_md;

public class quark_ServiceInstance extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_ServiceInstance();
    public quark_ServiceInstance() {
        super("quark.ServiceInstance");
        (this).name = "quark.ServiceInstance";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "serviceName"), new quark.reflect.Field("quark.String", "url"), new quark.reflect.Field("quark.behaviors.CircuitBreaker", "breaker")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.ServiceInstance((String) ((args).get(0)), (String) ((args).get(1)), (Integer) ((args).get(2)), (Double) ((args).get(3)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
