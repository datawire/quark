package builtin_md;

public class builtin_behaviors_RPC extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_behaviors_RPC();
    public builtin_behaviors_RPC() {
        super("builtin.behaviors.RPC");
        (this).name = "builtin.behaviors.RPC";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.Service", "service"), new builtin.reflect.Field("builtin.reflect.Class", "returned"), new builtin.reflect.Field("builtin.float", "timeout"), new builtin.reflect.Field("builtin.String", "methodName"), new builtin.reflect.Field("builtin.ServiceInstance", "instance")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_behaviors_RPC_call_Method(), new builtin_behaviors_RPC_succeed_Method(), new builtin_behaviors_RPC_fail_Method(), new builtin_behaviors_RPC_toString_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.behaviors.RPC((builtin.Service) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
