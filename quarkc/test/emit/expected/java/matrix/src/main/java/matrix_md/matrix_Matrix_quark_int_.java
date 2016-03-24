package matrix_md;

public class matrix_Matrix_quark_int_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new matrix_Matrix_quark_int_();
    public matrix_Matrix_quark_int_() {
        super("matrix.Matrix<quark.int>");
        (this).name = "matrix.Matrix";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.int", "width"), new quark.reflect.Field("quark.int", "height"), new quark.reflect.Field("quark.List<quark.List<quark.Object>>", "columns")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new matrix_Matrix_quark_int____get___Method(), new matrix_Matrix_quark_int____set___Method()}));
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
