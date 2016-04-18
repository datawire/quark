package quark_md;

public class quark_behaviors_CircuitBreaker_onExecute_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_behaviors_CircuitBreaker_onExecute_Method() {
        super("quark.void", "onExecute", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Runtime"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.behaviors.CircuitBreaker obj = (quark.behaviors.CircuitBreaker) (object);
        (obj).onExecute((quark.Runtime) ((args).get(0)));
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
