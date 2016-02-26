package marshalling_md;

public class m_Inner extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new m_Inner();
    public m_Inner() {
        super("m.Inner");
        (this).name = "m.Inner";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.int", "inner_int"), new builtin.reflect.Field("builtin.String", "inner_string"), new builtin.reflect.Field("builtin.float", "inner_float"), new builtin.reflect.Field("builtin.List<builtin.String>", "inner_string_list")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new m_Inner_setup_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new m.Inner();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
