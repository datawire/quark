package quark_ffi_signatures_md;

public class generics_Matrix_quark_Object____get___Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public generics_Matrix_quark_Object____get___Method() {
        super("quark.Object", "__get__", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int", "quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        generics.Matrix<Object> obj = (generics.Matrix<Object>) (object);
        return (obj).__get__((Integer) ((args).get(0)), (Integer) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
