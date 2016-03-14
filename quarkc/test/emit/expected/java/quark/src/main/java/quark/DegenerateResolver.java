package quark;

/**
 * DegenerateResolver assumes that the serviceName is an URL.
 */
public class DegenerateResolver implements Resolver, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_DegenerateResolver_ref = quark_md.Root.quark_DegenerateResolver_md;
    public DegenerateResolver() {}
    public java.util.ArrayList<String> resolve(String serviceName) {
        return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{serviceName}));
    }
    public String _getClass() {
        return "quark.DegenerateResolver";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
