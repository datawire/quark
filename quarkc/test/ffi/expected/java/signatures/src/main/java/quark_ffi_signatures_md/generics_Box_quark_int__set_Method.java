package quark_ffi_signatures_md;

public class generics_Box_quark_int__set_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public generics_Box_quark_int__set_Method() {
        super("quark.void", "set", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        generics.Box<Integer> obj = (generics.Box<Integer>) (object);
        (obj).set((Integer) ((args).get(0)));
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
