package p1_p1_common;

/* BEGIN_BUILTIN */

public class ResponseHolder implements io.datawire.quark.runtime.HTTPHandler, io.datawire.quark.runtime.QObject {
    public io.datawire.quark.runtime.HTTPResponse response;
    public String failure = null;
    public ResponseHolder() {}
    public void onHTTPResponse(io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {
        (this).response = response;
    }
    public void onHTTPError(io.datawire.quark.runtime.HTTPRequest request, String message) {
        this.failure = message;
    }
    public String _getClass() {
        return "ResponseHolder";
    }
    public Object _getField(String name) {
        if ((name)==("response") || ((name) != null && (name).equals("response"))) {
            return (this).response;
        }
        if ((name)==("failure") || ((name) != null && (name).equals("failure"))) {
            return (this).failure;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("response") || ((name) != null && (name).equals("response"))) {
            (this).response = (io.datawire.quark.runtime.HTTPResponse) (value);
        }
        if ((name)==("failure") || ((name) != null && (name).equals("failure"))) {
            (this).failure = (String) (value);
        }
    }
    public void onHTTPInit(io.datawire.quark.runtime.HTTPRequest request) {}
    public void onHTTPFinal(io.datawire.quark.runtime.HTTPRequest request) {}
}
/* END_BUILTIN */
