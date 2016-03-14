package quark_md;

public class quark_behaviors_CircuitBreaker extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_behaviors_CircuitBreaker();
    public quark_behaviors_CircuitBreaker() {
        super("quark.behaviors.CircuitBreaker");
        (this).name = "quark.behaviors.CircuitBreaker";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.int", "failureLimit"), new quark.reflect.Field("quark.float", "retestDelay"), new quark.reflect.Field("quark.bool", "active"), new quark.reflect.Field("quark.int", "failureCount"), new quark.reflect.Field("quark.concurrent.Lock", "mutex")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_behaviors_CircuitBreaker_succeed_Method(), new quark_behaviors_CircuitBreaker_fail_Method(), new quark_behaviors_CircuitBreaker_onExecute_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.behaviors.CircuitBreaker((String) ((args).get(0)), (Integer) ((args).get(1)), (Double) ((args).get(2)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
