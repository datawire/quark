package inheritance;

public class Y extends X implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_Y_ref = quark_ffi_signatures_md.Root.inheritance_Y_md;
    public String name;
    public Y(String name) {
        super();
    }
    public void test() {}
    public String _getClass() {
        return "inheritance.Y";
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
