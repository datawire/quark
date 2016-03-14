package pkg;

public class T5 implements A, C, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pkg_T5_ref = defaulted_methods_md.Root.pkg_T5_md;
    public T5() {}
    public void foo() {
        do{System.out.println("T5 foo");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pkg.T5";
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
