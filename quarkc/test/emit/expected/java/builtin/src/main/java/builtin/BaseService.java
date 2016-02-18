package builtin;

public class BaseService implements Service, io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_BaseService_ref = builtin_md.Root.builtin_BaseService_md;
    public BaseService() {}
    public String getName() {
        return (String) (null);
    }
    public ServiceInstance getInstance() {
        return (ServiceInstance) (null);
    }
    public Double getTimeout() {
        return -(1.0);
    }
    public String _getClass() {
        return "builtin.BaseService";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public builtin.concurrent.Future rpc(String methodName, java.util.ArrayList<Object> args) {
        builtin.behaviors.RPC rpc = new builtin.behaviors.RPC(this, methodName);
        return (rpc).call(args);
    }
}
