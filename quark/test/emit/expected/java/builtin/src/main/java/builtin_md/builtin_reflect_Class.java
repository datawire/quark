package builtin_md;

public class builtin_reflect_Class extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_reflect_Class();
    public builtin_reflect_Class() {
        super("builtin.reflect.Class");
        (this).name = "Class";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.Map<builtin.String,builtin.reflect.Class>", "classes"), new builtin.reflect.Field("builtin.reflect.Class", "VOID"), new builtin.reflect.Field("builtin.reflect.Class", "BOOL"), new builtin.reflect.Field("builtin.reflect.Class", "INT"), new builtin.reflect.Field("builtin.reflect.Class", "LONG"), new builtin.reflect.Field("builtin.reflect.Class", "STRING"), new builtin.reflect.Field("builtin.String", "id"), new builtin.reflect.Field("builtin.String", "name"), new builtin.reflect.Field("builtin.List<builtin.reflect.Class>", "parameters"), new builtin.reflect.Field("builtin.List<builtin.reflect.Field>", "fields"), new builtin.reflect.Field("builtin.List<builtin.reflect.Method>", "methods")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.reflect.Class((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
