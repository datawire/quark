package no_spurious_cast_lib;

public class Y extends X<Integer> implements io.datawire.quark.runtime.QObject {
    public Y() {
        super();
    }
    public String _getClass() {
        return "Y";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
