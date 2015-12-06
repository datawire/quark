package pkg;

public class StringFoo implements Foo<String>, io.datawire.quark.runtime.QObject {
    public StringFoo() {}
    public String get() {
        return "fdsa";
    }
    public String _getClass() {
        return "pkg.StringFoo";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public String foo() {
        return this.get();
    }
}
