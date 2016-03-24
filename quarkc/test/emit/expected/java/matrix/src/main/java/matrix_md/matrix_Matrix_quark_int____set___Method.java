package matrix_md;

public class matrix_Matrix_quark_int____set___Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public matrix_Matrix_quark_int____set___Method() {
        super("quark.void", "__set__", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int", "quark.int", "quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        matrix.Matrix<Integer> obj = (matrix.Matrix<Integer>) (object);
        (obj).__set__((Integer) ((args).get(0)), (Integer) ((args).get(1)), (Integer) ((args).get(2)));
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
