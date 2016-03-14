package quark_md;

public class quark_behaviors_RPCRequest extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_behaviors_RPCRequest();
    public quark_behaviors_RPCRequest() {
        super("quark.behaviors.RPCRequest");
        (this).name = "quark.behaviors.RPCRequest";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.behaviors.RPC", "rpc"), new quark.reflect.Field("quark.concurrent.Future", "retval"), new quark.reflect.Field("quark.List<quark.Object>", "args"), new quark.reflect.Field("quark.concurrent.Timeout", "timeout")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_behaviors_RPCRequest_call_Method(), new quark_behaviors_RPCRequest_onHTTPResponse_Method(), new quark_behaviors_RPCRequest_onTimeout_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.behaviors.RPCRequest((java.util.ArrayList<Object>) ((args).get(0)), (quark.behaviors.RPC) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
