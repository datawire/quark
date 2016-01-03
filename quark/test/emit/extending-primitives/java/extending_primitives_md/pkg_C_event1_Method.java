package extending_primitives_md;

public class pkg_C_event1_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public pkg_C_event1_Method() {
        super("void", "event1", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        pkg.C obj = (pkg.C) (object);
        (obj).event1();
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
