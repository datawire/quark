package io.datawire.quark.runtime;

public interface HTTPServlet extends Servlet {
    public void onHTTPRequest(HTTPRequest request, HTTPResponse response);
}
