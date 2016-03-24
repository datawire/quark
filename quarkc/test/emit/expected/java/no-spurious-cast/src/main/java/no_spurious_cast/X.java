package no_spurious_cast;

public class X<T> implements io.datawire.quark.runtime.QObject {
    public X() {}
    public String _getClass() {
        return "no_spurious_cast.X<quark.Object>";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
