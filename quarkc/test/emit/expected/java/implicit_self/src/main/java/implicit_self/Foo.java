package implicit_self;

public class Foo implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class implicit_self_Foo_ref = implicit_self_md.Root.implicit_self_Foo_md;
    public Foo() {}
    public void next() {}
    public void test() {
        this.next();
    }
    public String _getClass() {
        return "implicit_self.Foo";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
