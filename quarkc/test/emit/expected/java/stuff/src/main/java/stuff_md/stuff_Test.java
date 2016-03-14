package stuff_md;

public class stuff_Test extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new stuff_Test();
    public stuff_Test() {
        super("stuff.Test");
        (this).name = "stuff.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new stuff_Test_foo_Method(), new stuff_Test_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new stuff.Test();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
