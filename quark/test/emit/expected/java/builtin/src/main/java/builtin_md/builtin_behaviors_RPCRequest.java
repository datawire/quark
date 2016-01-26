package builtin_md;

public class builtin_behaviors_RPCRequest extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_behaviors_RPCRequest();
    public builtin_behaviors_RPCRequest() {
        super("builtin.behaviors.RPCRequest");
        (this).name = "RPCRequest";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.behaviors.RPC", "rpc"), new builtin.reflect.Field("builtin.concurrent.Future", "retval"), new builtin.reflect.Field("builtin.Object", "message"), new builtin.reflect.Field("builtin.concurrent.Timeout", "timeout")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_behaviors_RPCRequest_call_Method(), new builtin_behaviors_RPCRequest_onHTTPResponse_Method(), new builtin_behaviors_RPCRequest_onTimeout_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.behaviors.RPCRequest((args).get(0), (builtin.behaviors.RPC) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
