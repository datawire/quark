package builtin;

/**
 * DegenerateResolver assumes that the serviceName is an URL.
 */
public class DegenerateResolver implements Resolver, io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_DegenerateResolver_ref = builtin_md.Root.builtin_DegenerateResolver_md;
    public DegenerateResolver() {}
    public java.util.ArrayList<String> resolve(String serviceName) {
        return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{serviceName}));
    }
    public String _getClass() {
        return "builtin.DegenerateResolver";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
