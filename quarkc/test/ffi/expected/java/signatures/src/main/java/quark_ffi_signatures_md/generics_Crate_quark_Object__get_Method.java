package quark_ffi_signatures_md;

public class generics_Crate_quark_Object__get_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public generics_Crate_quark_Object__get_Method() {
        super("quark.Object", "get", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        generics.Crate<Object> obj = (generics.Crate<Object>) (object);
        return (obj).get();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
