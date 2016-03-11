package operator_overload_md;

public class operator_overload_Overload extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new operator_overload_Overload();
    public operator_overload_Overload() {
        super("operator_overload.Overload");
        (this).name = "operator_overload.Overload";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new operator_overload_Overload___add___Method(), new operator_overload_Overload___mul___Method(), new operator_overload_Overload_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new operator_overload.Overload((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
