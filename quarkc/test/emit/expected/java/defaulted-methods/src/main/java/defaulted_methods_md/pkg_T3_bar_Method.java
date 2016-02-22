package defaulted_methods_md;

public class pkg_T3_bar_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public pkg_T3_bar_Method() {
        super("builtin.void", "bar", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        pkg.T3 obj = (pkg.T3) (object);
        (obj).bar();
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
