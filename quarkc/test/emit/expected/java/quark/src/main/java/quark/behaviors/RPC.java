package quark.behaviors;

public class RPC implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_behaviors_RPC_ref = quark_md.Root.quark_behaviors_RPC_md;
    public quark.Service service;
    public quark.reflect.Class returned;
    public Double timeout;
    public String methodName;
    public quark.ServiceInstance instance;
    public RPC(quark.Service service, String methodName) {
        Double timeout = (Double) (((io.datawire.quark.runtime.QObject) (service))._getField("timeout"));
        if (((timeout)==(null) || ((Object)(timeout) != null && ((Object) (timeout)).equals(null))) || ((timeout) <= (0.0))) {
            timeout = 10.0;
        }
        Double override = (service).getTimeout();
        if ((!((override)==(null) || ((Object)(override) != null && ((Object) (override)).equals(null)))) && ((override) > (0.0))) {
            timeout = override;
        }
        (this).returned = ((quark.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(service))).getMethod(methodName)).getType();
        (this).timeout = timeout;
        (this).methodName = methodName;
        (this).service = service;
    }
    public quark.concurrent.Future call(java.util.ArrayList<Object> args) {
        quark.concurrent.Future result = (quark.concurrent.Future) (null);
        (this).instance = ((this).service).getInstance();
        if (!(((this).instance)==(null) || ((Object)((this).instance) != null && ((Object) ((this).instance)).equals(null)))) {
            io.datawire.quark.runtime.HTTPRequest request = new io.datawire.quark.runtime.ClientHTTPRequest(((this).instance).getURL());
            io.datawire.quark.runtime.JSONObject json = quark.Functions.toJSON(args, null);
            io.datawire.quark.runtime.JSONObject envelope = new io.datawire.quark.runtime.JSONObject();
            (envelope).setObjectItem(("$method"), ((new io.datawire.quark.runtime.JSONObject()).setString((this).methodName)));
            (envelope).setObjectItem(("$context"), ((new io.datawire.quark.runtime.JSONObject()).setString("TBD")));
            (envelope).setObjectItem(("rpc"), (json));
            String body = (envelope).toString();
            (request).setBody(body);
            (request).setMethod("POST");
            RPCRequest rpc = new RPCRequest(args, this);
            result = (rpc).call(request);
        } else {
            result = (quark.concurrent.Future) ((this.returned).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))));
            (result).finish("all services are down");
        }
        quark.concurrent.FutureWait.waitFor(result, 10.0);
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
        return "quark.behaviors.RPC";
    }
    public Object _getField(String name) {
        if ((name)==("service") || ((Object)(name) != null && ((Object) (name)).equals("service"))) {
            return (this).service;
        }
        if ((name)==("returned") || ((Object)(name) != null && ((Object) (name)).equals("returned"))) {
            return (this).returned;
        }
        if ((name)==("timeout") || ((Object)(name) != null && ((Object) (name)).equals("timeout"))) {
            return (this).timeout;
        }
        if ((name)==("methodName") || ((Object)(name) != null && ((Object) (name)).equals("methodName"))) {
            return (this).methodName;
        }
        if ((name)==("instance") || ((Object)(name) != null && ((Object) (name)).equals("instance"))) {
            return (this).instance;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("service") || ((Object)(name) != null && ((Object) (name)).equals("service"))) {
            (this).service = (quark.Service) (value);
        }
        if ((name)==("returned") || ((Object)(name) != null && ((Object) (name)).equals("returned"))) {
            (this).returned = (quark.reflect.Class) (value);
        }
        if ((name)==("timeout") || ((Object)(name) != null && ((Object) (name)).equals("timeout"))) {
            (this).timeout = (Double) (value);
        }
        if ((name)==("methodName") || ((Object)(name) != null && ((Object) (name)).equals("methodName"))) {
            (this).methodName = (String) (value);
        }
        if ((name)==("instance") || ((Object)(name) != null && ((Object) (name)).equals("instance"))) {
            (this).instance = (quark.ServiceInstance) (value);
        }
    }
}
