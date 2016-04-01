package constructors_md;

public class test4_Test extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new test4_Test();
    public test4_Test() {
        super("test4.Test");
        (this).name = "test4.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.String", "mumble"), new quark.reflect.Field("quark.String", "later")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new test4.Test();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
