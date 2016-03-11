package matrix_md;

public class matrix_Matrix_builtin_int_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new matrix_Matrix_builtin_int_();
    public matrix_Matrix_builtin_int_() {
        super("matrix.Matrix<builtin.int>");
        (this).name = "matrix.Matrix";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.int", "width"), new builtin.reflect.Field("builtin.int", "height"), new builtin.reflect.Field("builtin.List<builtin.List<builtin.Object>>", "columns")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new matrix_Matrix_builtin_int____get___Method(), new matrix_Matrix_builtin_int____set___Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new matrix.Matrix<Integer>((Integer) ((args).get(0)), (Integer) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
