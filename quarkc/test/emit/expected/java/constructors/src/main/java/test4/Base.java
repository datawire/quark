package test4;

public class Base implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class test4_Base_ref = constructors_md.Root.test4_Base_md;
    public String name = "Hello World!";
    public Base() {}
    public String _getClass() {
        return "test4.Base";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
