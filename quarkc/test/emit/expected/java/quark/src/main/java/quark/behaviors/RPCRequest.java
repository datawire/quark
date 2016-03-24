package quark.behaviors;

public class RPCRequest implements io.datawire.quark.runtime.HTTPHandler, quark.concurrent.TimeoutListener, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_behaviors_RPCRequest_ref = quark_md.Root.quark_behaviors_RPCRequest_md;
    public RPC rpc;
    public quark.concurrent.Future retval;
    public java.util.ArrayList<Object> args;
    public quark.concurrent.Timeout timeout;
    public RPCRequest(java.util.ArrayList<Object> args, RPC rpc) {
        (this).retval = (quark.concurrent.Future) (((rpc).returned).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))));
        (this).args = args;
        (this).timeout = new quark.concurrent.Timeout((rpc).timeout);
        (this).rpc = rpc;
    }
    public quark.concurrent.Future call(io.datawire.quark.runtime.HTTPRequest request) {
        ((this).timeout).start(this);
        (quark.concurrent.Context.runtime()).request(request, this);
        return (this).retval;
    }
    public void onHTTPResponse(io.datawire.quark.runtime.HTTPRequest rq, io.datawire.quark.runtime.HTTPResponse response) {
        String info;
        ((this).timeout).cancel();
        if (!(((response).getCode())==(200) || ((Object)((response).getCode()) != null && ((Object) ((response).getCode())).equals(200)))) {
            info = ((((this).rpc).toString()) + (" failed: Server returned error ")) + (Integer.toString((response).getCode()));
            ((this).retval).finish(info);
            ((this).rpc).fail(info);
            return;
        }
        String body = (response).getBody();
        io.datawire.quark.runtime.JSONObject obj = io.datawire.quark.runtime.JSONObject.parse(body);
        String classname = ((obj).getObjectItem("$class")).getString();
        if ((classname)==(null) || ((Object)(classname) != null && ((Object) (classname)).equals(null))) {
            info = (((this).rpc).toString()) + (" failed: Server returned unrecognizable content");
            ((this).retval).finish(info);
            ((this).rpc).fail(info);
            return;
        } else {
            quark.Functions.fromJSON(((this).rpc).returned, (this).retval, obj);
            ((this).retval).finish(null);
            ((this).rpc).succeed("Success in the future...");
        }
    }
    public void onTimeout(quark.concurrent.Timeout timeout) {
        ((this).retval).finish("request timed out");
        ((this).rpc).fail("request timed out");
    }
    public String _getClass() {
        return "quark.behaviors.RPCRequest";
    }
    public Object _getField(String name) {
        if ((name)==("rpc") || ((Object)(name) != null && ((Object) (name)).equals("rpc"))) {
            return (this).rpc;
        }
        if ((name)==("retval") || ((Object)(name) != null && ((Object) (name)).equals("retval"))) {
            return (this).retval;
        }
        if ((name)==("args") || ((Object)(name) != null && ((Object) (name)).equals("args"))) {
            return (this).args;
        }
        if ((name)==("timeout") || ((Object)(name) != null && ((Object) (name)).equals("timeout"))) {
            return (this).timeout;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("rpc") || ((Object)(name) != null && ((Object) (name)).equals("rpc"))) {
            (this).rpc = (RPC) (value);
        }
        if ((name)==("retval") || ((Object)(name) != null && ((Object) (name)).equals("retval"))) {
            (this).retval = (quark.concurrent.Future) (value);
        }
        if ((name)==("args") || ((Object)(name) != null && ((Object) (name)).equals("args"))) {
            (this).args = (java.util.ArrayList<Object>) (value);
        }
        if ((name)==("timeout") || ((Object)(name) != null && ((Object) (name)).equals("timeout"))) {
            (this).timeout = (quark.concurrent.Timeout) (value);
        }
    }
    public void onHTTPInit(io.datawire.quark.runtime.HTTPRequest request) {}
    public void onHTTPError(io.datawire.quark.runtime.HTTPRequest request, String message) {}
    public void onHTTPFinal(io.datawire.quark.runtime.HTTPRequest request) {}
}
