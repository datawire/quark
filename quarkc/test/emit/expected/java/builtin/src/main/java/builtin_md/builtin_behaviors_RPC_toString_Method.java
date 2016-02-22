package builtin_md;

public class builtin_behaviors_RPC_toString_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_behaviors_RPC_toString_Method() {
        super("builtin.String", "toString", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.behaviors.RPC obj = (builtin.behaviors.RPC) (object);
        return (obj).toString();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
