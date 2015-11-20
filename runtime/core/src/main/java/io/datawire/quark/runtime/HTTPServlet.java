package io.datawire.quark.runtime;

public interface HTTPServlet {
    void onHTTPInit(String url, Runtime runtime);
    void onHTTPError(String url);
    void onHTTPRequest(HTTPRequest request, HTTPResponse response);
}
