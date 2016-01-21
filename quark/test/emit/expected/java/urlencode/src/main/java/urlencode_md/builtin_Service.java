package urlencode_md;

public class builtin_Service extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new builtin_Service();
    public builtin_Service() {
        super("builtin.Service");
        (this).name = "Service";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_Service_getURL_Method(), new builtin_Service_getRuntime_Method(), new builtin_Service_getTimeout_Method(), new builtin_Service_rpc_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
