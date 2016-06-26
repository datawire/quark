package quark_ffi_signatures_md;

public class generics_ccc_Context extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new generics_ccc_Context();
    public generics_ccc_Context() {
        super("generics.ccc.Context");
        (this).name = "generics.ccc.Context";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("generics.ccc.Context", "_global"), new quark.reflect.Field("generics.ccc.TLS<generics.ccc.Context>", "_current"), new quark.reflect.Field("generics.ccc.Context", "parent")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new generics_ccc_Context_current_Method(), new generics_ccc_Context_global_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new generics.ccc.Context((generics.ccc.Context) ((args).get(0)));
    }
    public Boolean isAbstract() {
        return false;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
