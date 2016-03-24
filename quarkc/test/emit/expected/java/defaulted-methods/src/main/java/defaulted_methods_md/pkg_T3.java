package defaulted_methods_md;

public class pkg_T3 extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new pkg_T3();
    public pkg_T3() {
        super("pkg.T3");
        (this).name = "pkg.T3";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_T3_foo_Method(), new pkg_T3_bar_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.T3();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
