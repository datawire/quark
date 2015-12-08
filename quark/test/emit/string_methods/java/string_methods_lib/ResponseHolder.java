package string_methods_lib;

/* BEGIN_BUILTIN */

public class ResponseHolder implements io.datawire.quark.runtime.HTTPHandler, io.datawire.quark.runtime.QObject {
    public io.datawire.quark.runtime.HTTPResponse response;
    public ResponseHolder() {}
    public void onHTTPResponse(io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {
        (this).response = response;
    }
    public String _getClass() {
        return "ResponseHolder";
    }
    public Object _getField(String name) {
        if ((name)==("response") || ((name) != null && (name).equals("response"))) {
            return (this).response;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("response") || ((name) != null && (name).equals("response"))) {
            (this).response = (io.datawire.quark.runtime.HTTPResponse) (value);
        }
    }
    public void onHTTPInit(io.datawire.quark.runtime.HTTPRequest request) {}
    public void onHTTPError(io.datawire.quark.runtime.HTTPRequest request) {}
    public void onHTTPFinal(io.datawire.quark.runtime.HTTPRequest request) {}
}
/* END_BUILTIN */
