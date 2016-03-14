package extending_primitives_md;

public class pkg_C extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new pkg_C();
    public pkg_C() {
        super("pkg.C");
        (this).name = "pkg.C";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_C_event1_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.C();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
