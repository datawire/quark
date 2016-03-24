package quark_delegate_lib;

public class Message implements io.datawire.quark.runtime.QObject {
    public Message() {}
    public String encode() {
        return "ENCODED";
    }
    public String _getClass() {
        return "Message";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
