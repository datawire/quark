package quark_ffi_signatures_md;

public class interfaces_Bar_quark_Object__m2_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public interfaces_Bar_quark_Object__m2_Method() {
        super("quark.void", "m2", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        interfaces.Bar<Object> obj = (interfaces.Bar<Object>) (object);
        (obj).m2((args).get(0));
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
