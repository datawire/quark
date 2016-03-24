package quark_md;

public class quark_concurrent_Future extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_concurrent_Future();
    public quark_concurrent_Future() {
        super("quark.concurrent.Future");
        (this).name = "quark.concurrent.Future";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Context", "_context"), new quark.reflect.Field("quark.bool", "_finished"), new quark.reflect.Field("quark.String", "_error"), new quark.reflect.Field("quark.List<quark.concurrent.FutureCompletion>", "_callbacks"), new quark.reflect.Field("quark.concurrent.Lock", "_lock")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_concurrent_Future_onFinished_Method(), new quark_concurrent_Future_finish_Method(), new quark_concurrent_Future_isFinished_Method(), new quark_concurrent_Future_getError_Method(), new quark_concurrent_Future_await_Method(), new quark_concurrent_Future_getContext_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.concurrent.Future();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
