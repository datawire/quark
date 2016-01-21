package use_class_before_def_md;

public class builtin_Client_getTimeout_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_Client_getTimeout_Method() {
        super("builtin.long", "getTimeout", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.Client obj = (builtin.Client) (object);
        return (obj).getTimeout();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
