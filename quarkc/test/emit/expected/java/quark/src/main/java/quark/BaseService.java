package quark;

public class BaseService implements Service, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_BaseService_ref = quark_md.Root.quark_BaseService_md;
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
        return "quark.BaseService";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public quark.concurrent.Future rpc(String methodName, java.util.ArrayList<Object> args) {
        quark.behaviors.RPC rpc = new quark.behaviors.RPC(this, methodName);
        return (rpc).call(args);
    }
}
