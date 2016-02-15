package io.datawire.quark.runtime;

public interface WSServlet extends Servlet {
    WSHandler onWSConnect(HTTPRequest upgrade_request);
}
