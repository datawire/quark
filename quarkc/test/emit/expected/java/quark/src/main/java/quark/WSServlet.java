package quark;

/**
 * Websocket servlet
 */
public interface WSServlet extends Servlet {
    public static quark.reflect.Class quark_WSServlet_ref = quark_md.Root.quark_WSServlet_md;
    /**
     * called for each new incoming WebSocket connection
     */
     WSHandler onWSConnect(HTTPRequest upgrade_request);
     void serveWS(String url);
}
