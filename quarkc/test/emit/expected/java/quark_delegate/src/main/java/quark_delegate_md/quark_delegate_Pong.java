package quark_delegate_md;

public class quark_delegate_Pong extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_delegate_Pong();
    public quark_delegate_Pong() {
        super("quark_delegate.Pong");
        (this).name = "quark_delegate.Pong";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_delegate_Pong_toString_Method(), new quark_delegate_Pong_encode_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark_delegate.Pong();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
