package quark_delegate_lib;

public class Pong extends Message implements io.datawire.quark.runtime.QObject {
    public Pong() {
        super();
    }
    public String toString() {
        return "PONG";
    }
    public String _getClass() {
        return "Pong";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
