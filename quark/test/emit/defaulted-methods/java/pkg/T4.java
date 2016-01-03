package pkg;

public class T4 implements A, C, io.datawire.quark.runtime.QObject {
    public static reflect.Class pkg_T4_ref = defaulted_methods_md.Root.pkg_T4_md;
    public T4() {}
    public String _getClass() {
        return "pkg.T4";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void bar() {
        do{System.out.println("A bar");System.out.flush();}while(false);
        (this).foo();
    }
    public void foo() {
        do{System.out.println("C mixin for foo");System.out.flush();}while(false);
    }
}
