package pkg;

public class T3 implements B, A, io.datawire.quark.runtime.QObject {
    public T3() {}
    public void foo() {
        do{System.out.println("T3 foo");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pkg.T3";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void bar() {
        do{System.out.println("B bar");System.out.flush();}while(false);
    }
}
