package inheritance;

public class B extends A implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_B_ref = quark_ffi_signatures_md.Root.inheritance_B_md;
    public B(String name) {
        super(name);
    }
    public void greet() {}
    public String _getClass() {
        return "inheritance.B";
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
