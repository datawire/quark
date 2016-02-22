package builtin.behaviors;

public class RPCRequest implements io.datawire.quark.runtime.HTTPHandler, builtin.concurrent.TimeoutListener, io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_behaviors_RPCRequest_ref = builtin_md.Root.builtin_behaviors_RPCRequest_md;
    public RPC rpc;
    public builtin.concurrent.Future retval;
    public java.util.ArrayList<Object> args;
    public builtin.concurrent.Timeout timeout;
    public RPCRequest(java.util.ArrayList<Object> args, RPC rpc) {
        (this).retval = (builtin.concurrent.Future) (((rpc).returned).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))));
        (this).args = args;
        (this).timeout = new builtin.concurrent.Timeout((rpc).timeout);
        (this).rpc = rpc;
    }
    public builtin.concurrent.Future call(io.datawire.quark.runtime.HTTPRequest request) {
        ((this).timeout).start(this);
        (builtin.concurrent.Context.runtime()).request(request, this);
        return (this).retval;
    }
    public void onHTTPResponse(io.datawire.quark.runtime.HTTPRequest rq, io.datawire.quark.runtime.HTTPResponse response) {
        String info;
        ((this).timeout).cancel();
        if (!(((response).getCode())==(200) || (((response).getCode()) != null && ((response).getCode()).equals(200)))) {
            info = ((((this).rpc).toString()) + (" failed: Server returned error ")) + (Integer.toString((response).getCode()));
            ((this).retval).finish(info);
            ((this).rpc).fail(info);
            return;
        }
        String body = (response).getBody();
        io.datawire.quark.runtime.JSONObject obj = io.datawire.quark.runtime.JSONObject.parse(body);
        String classname = ((obj).getObjectItem("$class")).getString();
        if ((classname)==(null) || ((classname) != null && (classname).equals(null))) {
            info = (((this).rpc).toString()) + (" failed: Server returned unrecognizable content");
            ((this).retval).finish(info);
            ((this).rpc).fail(info);
            return;
        } else {
            builtin.Functions.fromJSON(((this).rpc).returned, (this).retval, obj);
            ((this).retval).finish(null);
            ((this).rpc).succeed("Success in the future...");
        }
    }
    public void onTimeout(builtin.concurrent.Timeout timeout) {
        ((this).retval).finish("request timed out");
        ((this).rpc).fail("request timed out");
    }
    public String _getClass() {
        return "builtin.behaviors.RPCRequest";
    }
    public Object _getField(String name) {
        if ((name)==("rpc") || ((name) != null && (name).equals("rpc"))) {
            return (this).rpc;
        }
        if ((name)==("retval") || ((name) != null && (name).equals("retval"))) {
            return (this).retval;
        }
        if ((name)==("args") || ((name) != null && (name).equals("args"))) {
            return (this).args;
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            return (this).timeout;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("rpc") || ((name) != null && (name).equals("rpc"))) {
            (this).rpc = (RPC) (value);
        }
        if ((name)==("retval") || ((name) != null && (name).equals("retval"))) {
            (this).retval = (builtin.concurrent.Future) (value);
        }
        if ((name)==("args") || ((name) != null && (name).equals("args"))) {
            (this).args = (java.util.ArrayList<Object>) (value);
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            (this).timeout = (builtin.concurrent.Timeout) (value);
        }
    }
    public void onHTTPInit(io.datawire.quark.runtime.HTTPRequest request) {}
    public void onHTTPError(io.datawire.quark.runtime.HTTPRequest request, String message) {}
    public void onHTTPFinal(io.datawire.quark.runtime.HTTPRequest request) {}
}
