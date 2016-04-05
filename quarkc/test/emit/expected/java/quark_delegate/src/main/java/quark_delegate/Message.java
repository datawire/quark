package quark_delegate;

public class Message implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_delegate_Message_ref = quark_delegate_md.Root.quark_delegate_Message_md;
    public Message() {}
    public String encode() {
        return "ENCODED";
    }
    public String _getClass() {
        return "quark_delegate.Message";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
