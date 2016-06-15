package quark_ffi_signatures_md;

public class inheritance_Test extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_Test();
    public inheritance_Test() {
        super("inheritance.Test");
        (this).name = "inheritance.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.String", "mumble"), new quark.reflect.Field("quark.String", "later")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.get("inheritance.Base")}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.Test();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
