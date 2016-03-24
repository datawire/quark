package quark_md;

public class quark_concurrent_TimeoutExpiry extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_TimeoutExpiry();
    public quark_concurrent_TimeoutExpiry() {
        super("quark.concurrent.TimeoutExpiry");
        (this).name = "quark.concurrent.TimeoutExpiry";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Timeout", "timeout"), new quark.reflect.Field("quark.concurrent.TimeoutListener", "listener")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_TimeoutExpiry_getContext_Method(), new quark_concurrent_TimeoutExpiry_fireEvent_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.TimeoutExpiry((quark.concurrent.Timeout) ((args).get(0)), (quark.concurrent.TimeoutListener) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
