package builtin;

public class Macro implements io.datawire.quark.runtime.QObject {
    public Macro() {}
    public void test() {
        Macro m1 = new Macro();
        Macro m2 = new Macro();
        Macro m3 = m1;
        Macro m4 = m1;
        Macro m5 = m2;
        Macro m6 = m2;
        Macro m7 = m1;
        Macro m8 = m1;
        Macro m9 = m2;
        Macro m10 = m2;
    }
    public String _getClass() {
        return "Macro";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
