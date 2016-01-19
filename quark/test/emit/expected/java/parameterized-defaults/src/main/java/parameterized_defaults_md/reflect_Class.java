package parameterized_defaults_md;

public class reflect_Class extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new reflect_Class();
    public reflect_Class() {
        super("reflect.Class");
        (this).name = "Class";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("Map<String,reflect.Class>", "classes"), new reflect.Field("reflect.Class", "VOID"), new reflect.Field("reflect.Class", "BOOL"), new reflect.Field("reflect.Class", "INT"), new reflect.Field("reflect.Class", "LONG"), new reflect.Field("reflect.Class", "STRING"), new reflect.Field("String", "id"), new reflect.Field("String", "name"), new reflect.Field("List<reflect.Class>", "parameters"), new reflect.Field("List<reflect.Field>", "fields"), new reflect.Field("List<reflect.Method>", "methods")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new reflect.Class((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
