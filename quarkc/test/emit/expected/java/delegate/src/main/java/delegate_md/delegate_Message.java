package delegate_md;

public class delegate_Message extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new delegate_Message();
    public delegate_Message() {
        super("delegate.Message");
        (this).name = "delegate.Message";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new delegate_Message_encode_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new delegate.Message();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
