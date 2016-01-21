package builtin;

public class Native implements io.datawire.quark.runtime.QObject {
    public Native() {}
    public void test() {
        Native n1 = new Native();
        Native n2 = new Native();
        Native n1n2 = new Native();
        Native n3 = n1n2;
    }
    public String _getClass() {
        return "Native";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
