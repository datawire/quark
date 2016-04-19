package quark.spi_api_tracing;

public class WSHandlerProxy extends Identifiable implements quark.WSHandler, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_WSHandlerProxy_ref = quark_md.Root.quark_spi_api_tracing_WSHandlerProxy_md;
    public quark.WSHandler handler_impl;
    public WebSocketProxy _wrapped_socket;
    public WSHandlerProxy(io.datawire.quark.runtime.Logger log, quark.WSHandler handler_impl) {
        super(log, "WSHandler");
        (this).handler_impl = handler_impl;
        (this)._wrapped_socket = (WebSocketProxy) (null);
    }
    public WebSocketProxy _wrap_socket(quark.WebSocket socket) {
        if ((this._wrapped_socket)==(null) || ((Object)(this._wrapped_socket) != null && ((Object) (this._wrapped_socket)).equals(null))) {
            this._wrapped_socket = new WebSocketProxy((this).log, socket);
        }
        return this._wrapped_socket;
    }
    public void onWSInit(quark.WebSocket socket) {
        WebSocketProxy wrapped_socket = this._wrap_socket(socket);
        ((this).log).debug(((((this).id) + (".onWSInit(")) + ((wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSInit(wrapped_socket);
    }
    public void onWSConnected(quark.WebSocket socket) {
        WebSocketProxy wrapped_socket = this._wrap_socket(socket);
        ((this).log).debug(((((this).id) + (".onWSConnected(")) + ((wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSConnected(wrapped_socket);
    }
    public void onWSMessage(quark.WebSocket socket, String message) {
        WebSocketProxy wrapped_socket = this._wrap_socket(socket);
        ((this).log).debug(((((((this).id) + (".onWSMessage(")) + ((wrapped_socket).id)) + (", ")) + (Functions.quote(message))) + (")"));
        (this.handler_impl).onWSMessage(wrapped_socket, message);
    }
    public void onWSBinary(quark.WebSocket socket, io.datawire.quark.runtime.Buffer message) {
        WebSocketProxy wrapped_socket = this._wrap_socket(socket);
        ((this).log).debug(((((((this).id) + (".onWSBinary(")) + ((wrapped_socket).id)) + (", ")) + (((quark.concurrent.Context.runtime()).codec()).toHexdump(message, 0, (message).capacity(), 4))) + (")"));
        (this.handler_impl).onWSBinary(wrapped_socket, message);
    }
    public void onWSClosed(quark.WebSocket socket) {
        WebSocketProxy wrapped_socket = this._wrap_socket(socket);
        ((this).log).debug(((((this).id) + (".onWSClosed(")) + ((wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSClosed(wrapped_socket);
    }
    public void onWSError(quark.WebSocket socket) {
        WebSocketProxy wrapped_socket = this._wrap_socket(socket);
        ((this).log).debug(((((this).id) + (".onWSError(")) + ((wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSError(wrapped_socket);
    }
    public void onWSFinal(quark.WebSocket socket) {
        WebSocketProxy wrapped_socket = this._wrap_socket(socket);
        ((this).log).debug(((((this).id) + (".onWSFinal(")) + ((wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSFinal(wrapped_socket);
    }
    public String _getClass() {
        return "quark.spi_api_tracing.WSHandlerProxy";
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
        if ((name)==("_wrapped_socket") || ((Object)(name) != null && ((Object) (name)).equals("_wrapped_socket"))) {
            return (this)._wrapped_socket;
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
            (this).handler_impl = (quark.WSHandler) (value);
        }
        if ((name)==("_wrapped_socket") || ((Object)(name) != null && ((Object) (name)).equals("_wrapped_socket"))) {
            (this)._wrapped_socket = (WebSocketProxy) (value);
        }
    }
}
