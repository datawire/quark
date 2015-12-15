package io.datawire.quark.runtime;


public abstract class AbstractHTTPHandler implements HTTPHandler {
    @Override public void onHTTPInit(HTTPRequest request) {}
    @Override public void onHTTPResponse(HTTPRequest request, HTTPResponse response) {}
    @Override public void onHTTPError(HTTPRequest request, String message) {}
    @Override public void onHTTPFinal(HTTPRequest request) {}
}
