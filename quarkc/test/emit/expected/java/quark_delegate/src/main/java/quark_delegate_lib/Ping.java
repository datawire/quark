package quark_delegate_lib;

public class Ping extends Message implements io.datawire.quark.runtime.QObject {
    public Ping() {
        super();
    }
    public String _getClass() {
        return "Ping";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
