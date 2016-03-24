package quark_md;

public class quark_behaviors_RPC extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_behaviors_RPC();
    public quark_behaviors_RPC() {
        super("quark.behaviors.RPC");
        (this).name = "quark.behaviors.RPC";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.Service", "service"), new quark.reflect.Field("quark.reflect.Class", "returned"), new quark.reflect.Field("quark.float", "timeout"), new quark.reflect.Field("quark.String", "methodName"), new quark.reflect.Field("quark.ServiceInstance", "instance")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_behaviors_RPC_call_Method(), new quark_behaviors_RPC_succeed_Method(), new quark_behaviors_RPC_fail_Method(), new quark_behaviors_RPC_toString_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.behaviors.RPC((quark.Service) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
