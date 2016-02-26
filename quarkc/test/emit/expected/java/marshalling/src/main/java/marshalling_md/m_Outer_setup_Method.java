package marshalling_md;

public class m_Outer_setup_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public m_Outer_setup_Method() {
        super("m.Outer", "setup", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        m.Outer obj = (m.Outer) (object);
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
