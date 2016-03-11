package static_md;

public class static_Foo_test2_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public static_Foo_test2_Method() {
        super("builtin.void", "test2", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        static_.Foo obj = (static_.Foo) (object);
        (obj).test2();
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
