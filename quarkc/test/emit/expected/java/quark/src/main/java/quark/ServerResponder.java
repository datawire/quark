package quark;

public class ServerResponder implements quark.concurrent.FutureListener, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_ServerResponder_ref = quark_md.Root.quark_ServerResponder_md;
    public io.datawire.quark.runtime.HTTPRequest request;
    public io.datawire.quark.runtime.HTTPResponse response;
    public ServerResponder(io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {
        (this).request = request;
        (this).response = response;
    }
    public void onFuture(quark.concurrent.Future result) {
        String error = (result).getError();
        if (!((error)==(null) || ((error) != null && (error).equals(null)))) {
            (this.response).setCode(404);
        } else {
            ((this).response).setBody((Functions.toJSON(result, null)).toString());
            ((this).response).setCode(200);
        }
        (quark.concurrent.Context.runtime()).respond(this.request, this.response);
    }
    public String _getClass() {
        return "quark.ServerResponder";
    }
    public Object _getField(String name) {
        if ((name)==("request") || ((name) != null && (name).equals("request"))) {
            return (this).request;
        }
        if ((name)==("response") || ((name) != null && (name).equals("response"))) {
            return (this).response;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("request") || ((name) != null && (name).equals("request"))) {
            (this).request = (io.datawire.quark.runtime.HTTPRequest) (value);
        }
        if ((name)==("response") || ((name) != null && (name).equals("response"))) {
            (this).response = (io.datawire.quark.runtime.HTTPResponse) (value);
        }
    }
}
