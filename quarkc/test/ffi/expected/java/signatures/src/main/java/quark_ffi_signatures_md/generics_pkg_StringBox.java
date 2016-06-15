package quark_ffi_signatures_md;

public class generics_pkg_StringBox extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new generics_pkg_StringBox();
    public generics_pkg_StringBox() {
        super("generics.pkg.StringBox");
        (this).name = "generics.pkg.StringBox";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.OBJECT}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new generics.pkg.StringBox((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
