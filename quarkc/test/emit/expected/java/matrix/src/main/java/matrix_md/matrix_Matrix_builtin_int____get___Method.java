package matrix_md;

public class matrix_Matrix_builtin_int____get___Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public matrix_Matrix_builtin_int____get___Method() {
        super("builtin.int", "__get__", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int", "builtin.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        matrix.Matrix<Integer> obj = (matrix.Matrix<Integer>) (object);
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
