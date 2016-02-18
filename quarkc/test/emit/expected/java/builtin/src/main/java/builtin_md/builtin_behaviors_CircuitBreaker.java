package builtin_md;

public class builtin_behaviors_CircuitBreaker extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_behaviors_CircuitBreaker();
    public builtin_behaviors_CircuitBreaker() {
        super("builtin.behaviors.CircuitBreaker");
        (this).name = "builtin.behaviors.CircuitBreaker";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "id"), new builtin.reflect.Field("builtin.int", "failureLimit"), new builtin.reflect.Field("builtin.float", "retestDelay"), new builtin.reflect.Field("builtin.bool", "active"), new builtin.reflect.Field("builtin.int", "failureCount"), new builtin.reflect.Field("builtin.concurrent.Lock", "mutex")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_behaviors_CircuitBreaker_succeed_Method(), new builtin_behaviors_CircuitBreaker_fail_Method(), new builtin_behaviors_CircuitBreaker_onExecute_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.behaviors.CircuitBreaker((String) ((args).get(0)), (Integer) ((args).get(1)), (Double) ((args).get(2)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
