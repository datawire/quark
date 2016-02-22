package pkg;

public class C implements java.lang.Runnable, java.lang.Cloneable, io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class pkg_C_ref = extending_primitives_md.Root.pkg_C_md;
    public C() {}
    public void event1() {
        do{System.out.println("event1");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pkg.C";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void run() {
        do{System.out.println("running");System.out.flush();}while(false);
    }
    public void event2() {
        do{System.out.println("default event2");System.out.flush();}while(false);
    }
}
