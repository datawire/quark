package builtin_md;

public class builtin_concurrent_TLSContextInitializer_getValue_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_concurrent_TLSContextInitializer_getValue_Method() {
        super("builtin.concurrent.Context", "getValue", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.concurrent.TLSContextInitializer obj = (builtin.concurrent.TLSContextInitializer) (object);
        return (obj).getValue();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
