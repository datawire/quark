package inheritance;

public class Test extends Base implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_Test_ref = quark_ffi_signatures_md.Root.inheritance_Test_md;
    public String mumble;
    public String later;
    public Test() {
        super();
    }
    public String _getClass() {
        return "inheritance.Test";
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
