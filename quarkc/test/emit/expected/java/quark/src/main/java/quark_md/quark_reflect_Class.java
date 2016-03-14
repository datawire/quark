package quark_md;

public class quark_reflect_Class extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_reflect_Class();
    public quark_reflect_Class() {
        super("quark.reflect.Class");
        (this).name = "quark.reflect.Class";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.Map<quark.String,quark.reflect.Class>", "classes"), new quark.reflect.Field("quark.reflect.Class", "VOID"), new quark.reflect.Field("quark.reflect.Class", "BOOL"), new quark.reflect.Field("quark.reflect.Class", "INT"), new quark.reflect.Field("quark.reflect.Class", "LONG"), new quark.reflect.Field("quark.reflect.Class", "FLOAT"), new quark.reflect.Field("quark.reflect.Class", "STRING"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.List<quark.String>", "parameters"), new quark.reflect.Field("quark.List<quark.reflect.Field>", "fields"), new quark.reflect.Field("quark.List<quark.reflect.Method>", "methods")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.reflect.Class((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
