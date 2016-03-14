package quark_md;

public class quark_behaviors_RPC_call_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_behaviors_RPC_call_Method() {
        super("quark.concurrent.Future", "call", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.List<quark.Object>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.behaviors.RPC obj = (quark.behaviors.RPC) (object);
        return (obj).call((java.util.ArrayList<Object>) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
