package stuff_md;

public class stuff_Test_foo_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public stuff_Test_foo_Method() {
        super("stuff.Test", "foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"stuff.Test"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        stuff.Test obj = (stuff.Test) (object);
        return (obj).foo((stuff.Test) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
