package delegate;

public class Message implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class delegate_Message_ref = delegate_md.Root.delegate_Message_md;
    public Message() {}
    public String encode() {
        return "ENCODED";
    }
    public String _getClass() {
        return "delegate.Message";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
