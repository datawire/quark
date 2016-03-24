package marshalling_md;

public class m_Inner extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new m_Inner();
    public m_Inner() {
        super("m.Inner");
        (this).name = "m.Inner";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.int", "inner_int"), new quark.reflect.Field("quark.String", "inner_string"), new quark.reflect.Field("quark.float", "inner_float"), new quark.reflect.Field("quark.List<quark.String>", "inner_string_list")}));
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
