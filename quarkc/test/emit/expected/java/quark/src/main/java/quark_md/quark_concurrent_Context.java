package quark_md;

public class quark_concurrent_Context extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_Context();
    public quark_concurrent_Context() {
        super("quark.concurrent.Context");
        (this).name = "quark.concurrent.Context";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Context", "_global"), new quark.reflect.Field("quark.concurrent.TLS<quark.concurrent.Context>", "_current"), new quark.reflect.Field("quark.concurrent.Context", "_parent"), new quark.reflect.Field("quark.Runtime", "_runtime"), new quark.reflect.Field("quark.concurrent.Collector", "collector")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_Context_current_Method(), new quark_concurrent_Context_global_Method(), new quark_concurrent_Context_runtime_Method(), new quark_concurrent_Context_swap_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.Context((quark.concurrent.Context) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
