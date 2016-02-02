package defaulted_methods_md;

public class pkg_T2 extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new pkg_T2();
    public pkg_T2() {
        super("pkg.T2");
        (this).name = "pkg.T2";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_T2_foo_Method(), new pkg_T2_bar_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.T2();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
