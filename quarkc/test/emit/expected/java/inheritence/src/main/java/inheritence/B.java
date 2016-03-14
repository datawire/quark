package inheritence;

public class B extends A implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritence_B_ref = inheritence_md.Root.inheritence_B_md;
    public B() {
        super();
    }
    public void foo() {
        do{System.out.println("B");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "inheritence.B";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
