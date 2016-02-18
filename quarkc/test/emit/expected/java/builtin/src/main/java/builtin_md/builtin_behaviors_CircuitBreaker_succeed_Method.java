package builtin_md;

public class builtin_behaviors_CircuitBreaker_succeed_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_behaviors_CircuitBreaker_succeed_Method() {
        super("builtin.void", "succeed", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.behaviors.CircuitBreaker obj = (builtin.behaviors.CircuitBreaker) (object);
        (obj).succeed();
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
