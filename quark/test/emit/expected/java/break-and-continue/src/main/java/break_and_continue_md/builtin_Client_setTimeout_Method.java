package break_and_continue_md;

public class builtin_Client_setTimeout_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_Client_setTimeout_Method() {
        super("builtin.void", "setTimeout", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.long"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.Client obj = (builtin.Client) (object);
        (obj).setTimeout((Long) ((args).get(0)));
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
