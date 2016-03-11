package default_constructors;

public class A implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class default_constructors_A_ref = default_constructors_md.Root.default_constructors_A_md;
    public String name;
    public A(String name) {
        (this).name = name;
    }
    public String _getClass() {
        return "default_constructors.A";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
