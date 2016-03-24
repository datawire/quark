package marshalling_md;

public class m_Inner_setup_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public m_Inner_setup_Method() {
        super("m.Inner", "setup", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        m.Inner obj = (m.Inner) (object);
        return (obj).setup((Integer) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
