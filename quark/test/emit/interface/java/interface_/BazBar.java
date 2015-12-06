package interface_;

public class BazBar implements Bar<String>, io.datawire.quark.runtime.QObject {
    public BazBar() {}
    public void m1() {}
    public void m2(String arg) {}
    public void m3(java.util.ArrayList<String> args) {}
    public String _getClass() {
        return "BazBar";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
