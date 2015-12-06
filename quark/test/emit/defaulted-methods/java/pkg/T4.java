package pkg;

public class T4 implements A, C, io.datawire.quark.runtime.QObject {
    public T4() {}
    public String _getClass() {
        return "pkg.T4";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void bar() {
        System.out.println("A bar");
        (this).foo();
    }
    public void foo() {
        System.out.println("C mixin for foo");
    }
}
