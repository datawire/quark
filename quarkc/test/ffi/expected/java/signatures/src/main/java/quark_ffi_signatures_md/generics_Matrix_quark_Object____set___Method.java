package quark_ffi_signatures_md;

public class generics_Matrix_quark_Object____set___Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public generics_Matrix_quark_Object____set___Method() {
        super("quark.void", "__set__", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int", "quark.int", "quark.Object"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        generics.Matrix<Object> obj = (generics.Matrix<Object>) (object);
        (obj).__set__((Integer) ((args).get(0)), (Integer) ((args).get(1)), (args).get(2));
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
