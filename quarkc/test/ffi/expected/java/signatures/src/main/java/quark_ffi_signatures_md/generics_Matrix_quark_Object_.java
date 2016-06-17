package quark_ffi_signatures_md;

public class generics_Matrix_quark_Object_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new generics_Matrix_quark_Object_();
    public generics_Matrix_quark_Object_() {
        super("generics.Matrix<quark.Object>");
        (this).name = "generics.Matrix";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.int", "width"), new quark.reflect.Field("quark.int", "height"), new quark.reflect.Field("quark.List<quark.List<quark.Object>>", "columns")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new generics_Matrix_quark_Object____get___Method(), new generics_Matrix_quark_Object____set___Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.OBJECT}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new generics.Matrix<Object>((Integer) ((args).get(0)), (Integer) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
