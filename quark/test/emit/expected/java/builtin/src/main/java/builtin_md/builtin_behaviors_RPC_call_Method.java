package builtin_md;

public class builtin_behaviors_RPC_call_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_behaviors_RPC_call_Method() {
        super("builtin.concurrent.Future", "call", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.Object"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.behaviors.RPC obj = (builtin.behaviors.RPC) (object);
        return (obj).call((args).get(0));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
