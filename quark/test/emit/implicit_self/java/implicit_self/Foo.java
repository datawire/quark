package implicit_self;

public class Foo implements io.datawire.quark.runtime.QObject {
    public Foo() {}
    public void next() {}
    public void test() {
        this.next();
    }
    public String _getClass() {
        return "Foo";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
