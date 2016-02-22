package builtin_md;

public class builtin_behaviors_RPCRequest_call_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_behaviors_RPCRequest_call_Method() {
        super("builtin.concurrent.Future", "call", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.HTTPRequest"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.behaviors.RPCRequest obj = (builtin.behaviors.RPCRequest) (object);
        return (obj).call((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
