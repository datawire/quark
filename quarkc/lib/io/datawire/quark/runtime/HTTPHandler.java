package io.datawire.quark.runtime;


public interface HTTPHandler {
    void onHTTPInit(HTTPRequest request);
    void onHTTPResponse(HTTPRequest request, HTTPResponse response);
    void onHTTPError(HTTPRequest request, String message);
    void onHTTPFinal(HTTPRequest request);
}
