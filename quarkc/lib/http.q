quark *;
include io/datawire/quark/runtime/AbstractHTTPHandler.java;
include io/datawire/quark/runtime/ClientHTTPRequest.java;
include io/datawire/quark/netty/DatawireNettyHttpContainer.java;
include io/datawire/quark/netty/IncomingRequest.java;
include io/datawire/quark/netty/QuarkNettyHttpHandler.java;
include io/datawire/quark/netty/QuarkNettyRuntime.java;
include io/datawire/quark/netty/Response.java;

namespace quark {

    class HTTPError extends Error {}

    interface HTTPHandler {
        void onHTTPInit(HTTPRequest request) {}
        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {}
        void onHTTPError(HTTPRequest request, HTTPError message) {}
        void onHTTPFinal(HTTPRequest request) {}
    }

    interface HTTPRequest {
        macro HTTPRequest(String url) $java{new io.datawire.quark.runtime.ClientHTTPRequest($url)}
                                      $py{_HTTPRequest($url)}
                                      $rb{::DatawireQuarkCore::HTTP::Request.new($url)}
                                      $js{new _qrt.HTTPRequest($url)};

        String getUrl();
        void setMethod(String method);
        String getMethod();
        void setBody(String data);
        String getBody();
        void setHeader(String key, String value);
        String getHeader(String key);
        List<String> getHeaders();
    }

    interface HTTPResponse {
        int getCode();
        void setCode(int code);
        String getBody();
        void setBody(String body);
        void setHeader(String key, String value);
        String getHeader(String key);
        List<String> getHeaders();
    }

    @doc("Http servlet")
    interface HTTPServlet extends Servlet {
        @doc("incoming request. respond with Runtime.respond(). After responding the objects may get recycled by the runtime")
        void onHTTPRequest(HTTPRequest request, HTTPResponse response) {}

        void serveHTTP(String url) { concurrent.Context.runtime().serveHTTP(url, self); }
    }

}
