package quark;

/**
 * Http servlet
 */
public interface HTTPServlet extends Servlet {
    public static quark.reflect.Class quark_HTTPServlet_ref = quark_md.Root.quark_HTTPServlet_md;
    /**
     * incoming request. respond with Runtime.respond(). After responding the objects may get recycled by the runtime
     */
     void onHTTPRequest(HTTPRequest request, HTTPResponse response);
     void serveHTTP(String url);
}
