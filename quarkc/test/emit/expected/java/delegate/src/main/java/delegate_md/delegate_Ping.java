package delegate_md;

public class delegate_Ping extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new delegate_Ping();
    public delegate_Ping() {
        super("delegate.Ping");
        (this).name = "delegate.Ping";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new delegate_Ping_encode_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new delegate.Ping();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
