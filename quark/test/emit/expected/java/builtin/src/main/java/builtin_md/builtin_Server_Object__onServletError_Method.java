package builtin_md;

public class builtin_Server_Object__onServletError_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_Server_Object__onServletError_Method() {
        super("builtin.void", "onServletError", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String", "builtin.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.Server<Object> obj = (builtin.Server<Object>) (object);
        (obj).onServletError((String) ((args).get(0)), (String) ((args).get(1)));
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
