package marshalling_md;

public class builtin_List_m_Inner_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_List_m_Inner_();
    public builtin_List_m_Inner_() {
        super("builtin.List<m.Inner>");
        (this).name = "builtin.List";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"m.Inner"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new java.util.ArrayList<m.Inner>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
