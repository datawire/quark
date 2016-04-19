package quark.spi_api_tracing;

public class HTTPHandlerProxy extends Identifiable implements quark.HTTPHandler, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_HTTPHandlerProxy_ref = quark_md.Root.quark_spi_api_tracing_HTTPHandlerProxy_md;
    public quark.HTTPHandler handler_impl;
    public HTTPHandlerProxy(io.datawire.quark.runtime.Logger log, quark.HTTPHandler handler_impl) {
        super(log, handler_impl);
        (this).handler_impl = handler_impl;
    }
    public void onHTTPInit(quark.HTTPRequest request) {
        HTTPRequestProxy wrapped_request = (HTTPRequestProxy) (request);
        ((this).log).debug(((((this).id) + (".onHTTPInit(")) + ((wrapped_request).id)) + (")"));
        ((this).handler_impl).onHTTPInit(request);
    }
    public void onHTTPResponse(quark.HTTPRequest request, quark.HTTPResponse response) {
        HTTPRequestProxy wrapped_request = (HTTPRequestProxy) (request);
        ((this).log).debug(((((((((this).id) + (".onHTTPResponse(")) + ((wrapped_request).id)) + (", ")) + (Integer.toString((response).getCode()))) + (" ")) + (Functions.quote((response).getBody()))) + (")"));
        ((this).handler_impl).onHTTPResponse(request, response);
    }
    public void onHTTPError(quark.HTTPRequest request, String message) {
        HTTPRequestProxy wrapped_request = (HTTPRequestProxy) (request);
        ((this).log).debug(((((((this).id) + (".onHTTPError(")) + ((wrapped_request).id)) + (", ")) + (Functions.quote(message))) + (")"));
        ((this).handler_impl).onHTTPError(request, message);
    }
    public void onHTTPFinal(quark.HTTPRequest request) {
        HTTPRequestProxy wrapped_request = (HTTPRequestProxy) (request);
        ((this).log).debug(((((this).id) + (".onHTTPFinal(")) + ((wrapped_request).id)) + (")"));
        ((this).handler_impl).onHTTPFinal(request);
    }
    public String _getClass() {
        return "quark.spi_api_tracing.HTTPHandlerProxy";
    }
    public Object _getField(String name) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            return Identifiable.namer;
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            return (this).id;
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            return (this).log;
        }
        if ((name)==("handler_impl") || ((Object)(name) != null && ((Object) (name)).equals("handler_impl"))) {
            return (this).handler_impl;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            Identifiable.namer = (Identificator) (value);
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            (this).id = (String) (value);
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            (this).log = (io.datawire.quark.runtime.Logger) (value);
        }
        if ((name)==("handler_impl") || ((Object)(name) != null && ((Object) (name)).equals("handler_impl"))) {
            (this).handler_impl = (quark.HTTPHandler) (value);
        }
    }
}
