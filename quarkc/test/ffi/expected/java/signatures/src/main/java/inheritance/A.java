package inheritance;

public class A implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_A_ref = quark_ffi_signatures_md.Root.inheritance_A_md;
    public String name;
    public A(String name) {}
    public String _getClass() {
        return "inheritance.A";
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
