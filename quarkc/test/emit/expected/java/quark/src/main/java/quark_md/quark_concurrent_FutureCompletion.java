package quark_md;

public class quark_concurrent_FutureCompletion extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_FutureCompletion();
    public quark_concurrent_FutureCompletion() {
        super("quark.concurrent.FutureCompletion");
        (this).name = "quark.concurrent.FutureCompletion";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Future", "future"), new quark.reflect.Field("quark.concurrent.FutureListener", "listener")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_FutureCompletion_getContext_Method(), new quark_concurrent_FutureCompletion_fireEvent_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.FutureCompletion((quark.concurrent.Future) ((args).get(0)), (quark.concurrent.FutureListener) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
