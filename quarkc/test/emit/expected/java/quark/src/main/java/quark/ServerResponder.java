package quark;

public class ServerResponder implements quark.concurrent.FutureListener, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_ServerResponder_ref = quark_md.Root.quark_ServerResponder_md;
    public Boolean sendCORS;
    public io.datawire.quark.runtime.HTTPRequest request;
    public io.datawire.quark.runtime.HTTPResponse response;
    public ServerResponder(Boolean sendCORS, io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {
        (this).sendCORS = sendCORS;
        (this).request = request;
        (this).response = response;
    }
    public void onFuture(quark.concurrent.Future result) {
        String error = (result).getError();
        if (!((error)==(null) || ((Object)(error) != null && ((Object) (error)).equals(null)))) {
            (this.response).setCode(404);
        } else {
            if ((this).sendCORS) {
                ((this).response).setHeader("Access-Control-Allow-Origin", "*");
            }
            ((this).response).setBody((Functions.toJSON(result, null)).toString());
            ((this).response).setCode(200);
        }
        (quark.concurrent.Context.runtime()).respond(this.request, this.response);
    }
    public String _getClass() {
        return "quark.ServerResponder";
    }
    public Object _getField(String name) {
        if ((name)==("sendCORS") || ((Object)(name) != null && ((Object) (name)).equals("sendCORS"))) {
            return (this).sendCORS;
        }
        if ((name)==("request") || ((Object)(name) != null && ((Object) (name)).equals("request"))) {
            return (this).request;
        }
        if ((name)==("response") || ((Object)(name) != null && ((Object) (name)).equals("response"))) {
            return (this).response;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("sendCORS") || ((Object)(name) != null && ((Object) (name)).equals("sendCORS"))) {
            (this).sendCORS = (Boolean) (value);
        }
        if ((name)==("request") || ((Object)(name) != null && ((Object) (name)).equals("request"))) {
            (this).request = (io.datawire.quark.runtime.HTTPRequest) (value);
        }
        if ((name)==("response") || ((Object)(name) != null && ((Object) (name)).equals("response"))) {
            (this).response = (io.datawire.quark.runtime.HTTPResponse) (value);
        }
    }
}
