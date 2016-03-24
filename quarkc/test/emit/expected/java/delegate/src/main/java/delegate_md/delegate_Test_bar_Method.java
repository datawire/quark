package delegate_md;

public class delegate_Test_bar_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public delegate_Test_bar_Method() {
        super("quark.Object", "bar", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String", "quark.List<quark.Object>", "quark.List<quark.Object>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        delegate.Test obj = (delegate.Test) (object);
        return (obj).bar((String) ((args).get(0)), (java.util.ArrayList<Object>) ((args).get(1)), (java.util.ArrayList<Object>) ((args).get(2)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
