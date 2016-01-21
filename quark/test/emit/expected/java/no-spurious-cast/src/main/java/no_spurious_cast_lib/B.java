package no_spurious_cast_lib;

public class B extends A implements io.datawire.quark.runtime.QObject {
    public B() {
        super();
    }
    public String _getClass() {
        return "B";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
