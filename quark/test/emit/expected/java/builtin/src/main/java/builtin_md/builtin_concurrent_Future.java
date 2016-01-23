package builtin_md;

public class builtin_concurrent_Future extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_concurrent_Future();
    public builtin_concurrent_Future() {
        super("builtin.concurrent.Future");
        (this).name = "Future";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.concurrent.Context", "_context"), new builtin.reflect.Field("builtin.bool", "_finished"), new builtin.reflect.Field("builtin.String", "_error"), new builtin.reflect.Field("builtin.List<builtin.concurrent.FutureCompletion>", "_callbacks"), new builtin.reflect.Field("builtin.concurrent.Lock", "_lock")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_concurrent_Future_onFinished_Method(), new builtin_concurrent_Future_finish_Method(), new builtin_concurrent_Future_isFinished_Method(), new builtin_concurrent_Future_getError_Method(), new builtin_concurrent_Future_getContext_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.concurrent.Future();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
