package interface_;

public class Baz implements Foo, io.datawire.quark.runtime.QObject {
    public Baz() {}
    public void m2(Integer arg) {}
    public void m1() {}
    public void m3(java.util.ArrayList<String> args) {}
    public String _getClass() {
        return "Baz";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
