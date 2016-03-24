package quark_md;

public class quark_concurrent_FutureWait extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_FutureWait();
    public quark_concurrent_FutureWait() {
        super("quark.concurrent.FutureWait");
        (this).name = "quark.concurrent.FutureWait";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Condition", "_lock"), new quark.reflect.Field("quark.concurrent.Future", "_future")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_FutureWait_wait_Method(), new quark_concurrent_FutureWait_onFuture_Method(), new quark_concurrent_FutureWait_waitFor_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.FutureWait();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
