package builtin_md;

public class builtin_concurrent_CollectorExecutor_onExecute_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_CollectorExecutor_onExecute_Method() {
        super("builtin.void", "onExecute", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.Runtime"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.CollectorExecutor obj = (builtin.concurrent.CollectorExecutor) (object);
        (obj).onExecute((io.datawire.quark.runtime.Runtime) ((args).get(0)));
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
