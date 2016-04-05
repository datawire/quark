package test4;

public class Test extends Base implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class test4_Test_ref = constructors_md.Root.test4_Test_md;
    public String mumble = "lalala";
    public String later;
    public Test() {
        super();
        (this).later = "Hello World!";
    }
    public String _getClass() {
        return "test4.Test";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        if ((name)==("mumble") || ((Object)(name) != null && ((Object) (name)).equals("mumble"))) {
            return (this).mumble;
        }
        if ((name)==("later") || ((Object)(name) != null && ((Object) (name)).equals("later"))) {
            return (this).later;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
        if ((name)==("mumble") || ((Object)(name) != null && ((Object) (name)).equals("mumble"))) {
            (this).mumble = (String) (value);
        }
        if ((name)==("later") || ((Object)(name) != null && ((Object) (name)).equals("later"))) {
            (this).later = (String) (value);
        }
    }
}
