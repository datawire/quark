package inheritence_lib;

public class A implements io.datawire.quark.runtime.QObject {
    public A() {}
    public void foo() {
        do{System.out.println("A");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "A";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
