package pkg;

public class T5 implements A, C, io.datawire.quark.runtime.QObject {
    public T5() {}
    public void foo() {
        System.out.println("T5 foo");
    }
    public String _getClass() {
        return "pkg.T5";
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
