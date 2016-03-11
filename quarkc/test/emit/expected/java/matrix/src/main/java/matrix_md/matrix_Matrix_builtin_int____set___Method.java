package matrix_md;

public class matrix_Matrix_builtin_int____set___Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public matrix_Matrix_builtin_int____set___Method() {
        super("builtin.void", "__set__", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int", "builtin.int", "builtin.int"})));
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
