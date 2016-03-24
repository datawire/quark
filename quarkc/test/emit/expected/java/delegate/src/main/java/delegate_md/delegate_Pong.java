package delegate_md;

public class delegate_Pong extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new delegate_Pong();
    public delegate_Pong() {
        super("delegate.Pong");
        (this).name = "delegate.Pong";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new delegate_Pong_toString_Method(), new delegate_Pong_encode_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new delegate.Pong();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
