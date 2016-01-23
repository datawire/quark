package builtin_md;

public class builtin_concurrent_Context_swap_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_Context_swap_Method() {
        super("builtin.void", "swap", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.concurrent.Context"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.Context obj = (builtin.concurrent.Context) (object);
        builtin.concurrent.Context.swap((builtin.concurrent.Context) ((args).get(0)));
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
