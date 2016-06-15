package quark_ffi_signatures_md;

public class generics_ccc_TLS_generics_ccc_Context_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new generics_ccc_TLS_generics_ccc_Context_();
    public generics_ccc_TLS_generics_ccc_Context_() {
        super("generics.ccc.TLS<generics.ccc.Context>");
        (this).name = "generics.ccc.TLS";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"generics.ccc.Context"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("generics.ccc.Context", "_value")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new generics_ccc_TLS_generics_ccc_Context__getValue_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.OBJECT}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new generics.ccc.TLS<generics.ccc.Context>((generics.ccc.TLSInitializer<generics.ccc.Context>) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
