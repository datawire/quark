package quark_ffi_signatures_md;

public class generics_Crate_quark_Object__set_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public generics_Crate_quark_Object__set_Method() {
        super("quark.void", "set", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        generics.Crate<Object> obj = (generics.Crate<Object>) (object);
        (obj).set((args).get(0));
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
