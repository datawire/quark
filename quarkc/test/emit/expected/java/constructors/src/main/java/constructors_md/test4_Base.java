package constructors_md;

public class test4_Base extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new test4_Base();
    public test4_Base() {
        super("test4.Base");
        (this).name = "test4.Base";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "name")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new test4.Base();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
