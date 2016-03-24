package quark_md;

public class quark_concurrent_Timeout extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_Timeout();
    public quark_concurrent_Timeout() {
        super("quark.concurrent.Timeout");
        (this).name = "quark.concurrent.Timeout";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Context", "_context"), new quark.reflect.Field("quark.float", "timeout"), new quark.reflect.Field("quark.concurrent.Lock", "lock"), new quark.reflect.Field("quark.concurrent.TimeoutListener", "listener")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_Timeout_start_Method(), new quark_concurrent_Timeout_cancel_Method(), new quark_concurrent_Timeout_onExecute_Method(), new quark_concurrent_Timeout_getContext_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.Timeout((Double) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
