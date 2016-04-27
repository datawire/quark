package inheritance;

public class Base implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_Base_ref = quark_ffi_signatures_md.Root.inheritance_Base_md;
    public String name;
    public Base() {}
    public String _getClass() {
        return "inheritance.Base";
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
