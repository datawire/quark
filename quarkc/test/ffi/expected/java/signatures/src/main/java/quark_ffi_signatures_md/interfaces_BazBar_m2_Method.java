package quark_ffi_signatures_md;

public class interfaces_BazBar_m2_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public interfaces_BazBar_m2_Method() {
        super("quark.void", "m2", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        interfaces.BazBar obj = (interfaces.BazBar) (object);
        (obj).m2((String) ((args).get(0)));
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
