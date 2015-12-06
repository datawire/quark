package pkg;

public class T2 implements A, B, io.datawire.quark.runtime.QObject {
    public T2() {}
    public void foo() {
        System.out.println("T2 foo");
    }
    public String _getClass() {
        return "pkg.T2";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void bar() {
        System.out.println("A bar");
        (this).foo();
    }
}
