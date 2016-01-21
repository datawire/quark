package macro_stuff_md;

public class builtin_Service_rpc_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_Service_rpc_Method() {
        super("builtin.Object", "rpc", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String", "builtin.Object", "builtin.List<builtin.Object>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.Service obj = (builtin.Service) (object);
        return (obj).rpc((String) ((args).get(0)), (args).get(1), (java.util.ArrayList<Object>) ((args).get(2)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
