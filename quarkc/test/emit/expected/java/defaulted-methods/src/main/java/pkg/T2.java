package pkg;

public class T2 implements A, B, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pkg_T2_ref = defaulted_methods_md.Root.pkg_T2_md;
    public T2() {}
    public void foo() {
        do{System.out.println("T2 foo");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pkg.T2";
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
