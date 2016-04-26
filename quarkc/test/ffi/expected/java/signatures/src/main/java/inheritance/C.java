package inheritance;

public class C extends A implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_C_ref = quark_ffi_signatures_md.Root.inheritance_C_md;
    public C(String name) {
        super(("C") + (name));
    }
    public void greet() {}
    public String _getClass() {
        return "inheritance.C";
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
