package pkg;

public class T1 implements A, io.datawire.quark.runtime.QObject {
    public T1() {}
    public void foo() {
        do{System.out.println("T1 foo");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pkg.T1";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void bar() {
        do{System.out.println("A bar");System.out.flush();}while(false);
        (this).foo();
    }
}
