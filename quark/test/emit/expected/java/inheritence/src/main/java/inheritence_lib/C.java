package inheritence_lib;

public class C extends A implements io.datawire.quark.runtime.QObject {
    public C() {
        super();
    }
    public String _getClass() {
        return "C";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
