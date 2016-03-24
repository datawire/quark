package pkg;

public class StringFoo implements Foo<String>, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pkg_StringFoo_ref = parameterized_defaults_md.Root.pkg_StringFoo_md;
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
