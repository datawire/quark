package quark;

public interface HTTPHandler {
    public static quark.reflect.Class quark_HTTPHandler_ref = quark_md.Root.quark_HTTPHandler_md;
     void onHTTPInit(HTTPRequest request);
     void onHTTPResponse(HTTPRequest request, HTTPResponse response);
     void onHTTPError(HTTPRequest request, String message);
     void onHTTPFinal(HTTPRequest request);
}
