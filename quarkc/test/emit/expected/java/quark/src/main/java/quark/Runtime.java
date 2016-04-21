package quark;

public interface Runtime {
    public static quark.reflect.Class quark_Runtime_ref = quark_md.Root.quark_Runtime_md;
     void open(String url, WSHandler handler);
     void request(HTTPRequest request, HTTPHandler handler);
     void schedule(Task handler, Double delayInSeconds);
     io.datawire.quark.runtime.Codec codec();
     void serveHTTP(String url, HTTPServlet servlet);
     void serveWS(String url, WSServlet servlet);
     void respond(HTTPRequest request, HTTPResponse response);
    /**
     * Display the explanatory message and then terminate the program
     */
     void fail(String message);
    /**
     * Get a logger for the specified topic.
     */
     io.datawire.quark.runtime.Logger logger(String topic);
}
