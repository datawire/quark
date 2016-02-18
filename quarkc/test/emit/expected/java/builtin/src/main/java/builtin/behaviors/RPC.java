package builtin.behaviors;

public class RPC implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_behaviors_RPC_ref = builtin_md.Root.builtin_behaviors_RPC_md;
    public builtin.Service service;
    public builtin.reflect.Class returned;
    public Long timeout;
    public String methodName;
    public builtin.ServiceInstance instance;
    public RPC(builtin.Service service, String methodName) {
        Long timeout = (Long) (((io.datawire.quark.runtime.QObject) (service))._getField("timeout"));
        if (((timeout)==(null) || ((timeout) != null && (timeout).equals(null))) || ((timeout) <= (new Long(0)))) {
            timeout = new Long(10000);
        }
        Long override = (service).getTimeout();
        if ((!((override)==(null) || ((override) != null && (override).equals(null)))) && ((override) > (new Long(0)))) {
            timeout = override;
        }
        (this).returned = ((builtin.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(service))).getMethod(methodName)).getType();
        (this).timeout = timeout;
        (this).methodName = methodName;
        (this).service = service;
    }
    public builtin.concurrent.Future call(java.util.ArrayList<Object> args) {
        builtin.concurrent.Future result = (builtin.concurrent.Future) (null);
        (this).instance = ((this).service).getInstance();
        if (!(((this).instance)==(null) || (((this).instance) != null && ((this).instance).equals(null)))) {
            io.datawire.quark.runtime.HTTPRequest request = new io.datawire.quark.runtime.ClientHTTPRequest(((this).instance).getURL());
            io.datawire.quark.runtime.JSONObject json = builtin.Functions.toJSON(args, null);
            io.datawire.quark.runtime.JSONObject envelope = new io.datawire.quark.runtime.JSONObject();
            (envelope).setObjectItem(("$method"), ((new io.datawire.quark.runtime.JSONObject()).setString((this).methodName)));
            (envelope).setObjectItem(("$context"), ((new io.datawire.quark.runtime.JSONObject()).setString("TBD")));
            (envelope).setObjectItem(("rpc"), (json));
            (request).setBody((envelope).toString());
            (request).setMethod("POST");
            RPCRequest rpc = new RPCRequest(args, this);
            result = (rpc).call(request);
        } else {
            result = new builtin.concurrent.Future();
            (result).finish("all services are down");
        }
        builtin.concurrent.FutureWait.waitFor(result, new Long(1000));
        return result;
    }
    public void succeed(String info) {
        ((this).instance).succeed(info);
    }
    public void fail(String info) {
        ((this).instance).fail(info);
    }
    public String toString() {
        return (((((("RPC ") + (((this).service).getName())) + (" at ")) + (((this).instance).getURL())) + (": ")) + ((this).methodName)) + ("(...)");
    }
    public String _getClass() {
        return "builtin.behaviors.RPC";
    }
    public Object _getField(String name) {
        if ((name)==("service") || ((name) != null && (name).equals("service"))) {
            return (this).service;
        }
        if ((name)==("returned") || ((name) != null && (name).equals("returned"))) {
            return (this).returned;
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            return (this).timeout;
        }
        if ((name)==("methodName") || ((name) != null && (name).equals("methodName"))) {
            return (this).methodName;
        }
        if ((name)==("instance") || ((name) != null && (name).equals("instance"))) {
            return (this).instance;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("service") || ((name) != null && (name).equals("service"))) {
            (this).service = (builtin.Service) (value);
        }
        if ((name)==("returned") || ((name) != null && (name).equals("returned"))) {
            (this).returned = (builtin.reflect.Class) (value);
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            (this).timeout = (Long) (value);
        }
        if ((name)==("methodName") || ((name) != null && (name).equals("methodName"))) {
            (this).methodName = (String) (value);
        }
        if ((name)==("instance") || ((name) != null && (name).equals("instance"))) {
            (this).instance = (builtin.ServiceInstance) (value);
        }
    }
}
