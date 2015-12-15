package pkg;

public class Bar implements io.datawire.quark.runtime.QObject {
    public Bar() {}
    public void go() {
        Foo foo = new Foo();
        (foo).name = "bob";
        do{System.out.println((foo).name);System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pkg.Bar";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
