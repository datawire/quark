package inheritence;

public class A implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class inheritence_A_ref = inheritence_md.Root.inheritence_A_md;
    public A() {}
    public void foo() {
        do{System.out.println("A");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "inheritence.A";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
