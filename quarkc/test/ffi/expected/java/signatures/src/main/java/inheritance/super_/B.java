package inheritance.super_;

public class B extends A implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_super__B_ref = quark_ffi_signatures_md.Root.inheritance_super__B_md;
    public B() {
        super(null);
    }
    public void greet() {}
    public String _getClass() {
        return "inheritance.super_.B";
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
