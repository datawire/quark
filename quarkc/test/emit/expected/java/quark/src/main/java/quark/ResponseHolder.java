package quark;

public class ResponseHolder implements HTTPHandler, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_ResponseHolder_ref = quark_md.Root.quark_ResponseHolder_md;
    public HTTPResponse response;
    public String failure = null;
    public ResponseHolder() {}
    public void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
        (this).response = response;
    }
    public void onHTTPError(HTTPRequest request, String message) {
        this.failure = message;
    }
    public String _getClass() {
        return "quark.ResponseHolder";
    }
    public Object _getField(String name) {
        if ((name)==("response") || ((Object)(name) != null && ((Object) (name)).equals("response"))) {
            return (this).response;
        }
        if ((name)==("failure") || ((Object)(name) != null && ((Object) (name)).equals("failure"))) {
            return (this).failure;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("response") || ((Object)(name) != null && ((Object) (name)).equals("response"))) {
            (this).response = (HTTPResponse) (value);
        }
        if ((name)==("failure") || ((Object)(name) != null && ((Object) (name)).equals("failure"))) {
            (this).failure = (String) (value);
        }
    }
    public void onHTTPInit(HTTPRequest request) {}
    public void onHTTPFinal(HTTPRequest request) {}
}
