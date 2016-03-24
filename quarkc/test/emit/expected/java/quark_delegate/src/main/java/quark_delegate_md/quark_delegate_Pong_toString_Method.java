package quark_delegate_md;

public class quark_delegate_Pong_toString_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_delegate_Pong_toString_Method() {
        super("quark.String", "toString", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark_delegate.Pong obj = (quark_delegate.Pong) (object);
        return (obj).toString();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
