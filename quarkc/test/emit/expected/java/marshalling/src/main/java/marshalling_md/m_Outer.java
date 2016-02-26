package marshalling_md;

public class m_Outer extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new m_Outer();
    public m_Outer() {
        super("m.Outer");
        (this).name = "m.Outer";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.int", "outer_int"), new builtin.reflect.Field("builtin.String", "outer_string"), new builtin.reflect.Field("builtin.float", "outer_float"), new builtin.reflect.Field("builtin.List<m.Inner>", "outer_inner_list")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new m_Outer_setup_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new m.Outer();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
