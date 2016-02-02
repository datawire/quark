package defaulted_methods_md;

public class pkg_T5 extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new pkg_T5();
    public pkg_T5() {
        super("pkg.T5");
        (this).name = "pkg.T5";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_T5_foo_Method(), new pkg_T5_bar_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.T5();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
