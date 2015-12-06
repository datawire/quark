package pkg;

public class C implements java.lang.Runnable, java.lang.Cloneable, io.datawire.quark.runtime.QObject {
    public C() {}
    public void event1() {
        System.out.println("event1");
    }
    public String _getClass() {
        return "pkg.C";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void run() {
        System.out.println("running");
    }
    public void event2() {
        System.out.println("default event2");
    }
}
