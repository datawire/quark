package io.datawire.quark.runtime;

import quark.HTTPError;
import quark.HTTPHandler;
import quark.HTTPRequest;
import quark.HTTPResponse;

public abstract class AbstractHTTPHandler implements HTTPHandler {
    @Override public void onHTTPInit(HTTPRequest request) {}
    @Override public void onHTTPResponse(HTTPRequest request, HTTPResponse response) {}
    @Override public void onHTTPError(HTTPRequest request, HTTPError message) {}
    @Override public void onHTTPFinal(HTTPRequest request) {}
}
