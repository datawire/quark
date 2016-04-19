package quark.spi_api_tracing;

public class WSHandlerProxy extends Identifiable implements quark.WSHandler, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_WSHandlerProxy_ref = quark_md.Root.quark_spi_api_tracing_WSHandlerProxy_md;
    public quark.WSHandler handler_impl;
    public WebSocketProxy wrapped_socket;
    public WSHandlerProxy(io.datawire.quark.runtime.Logger log, quark.WSHandler handler_impl) {
        super(log, handler_impl);
        (this).handler_impl = handler_impl;
    }
    public void onWSInit(quark.WebSocket socket) {
        this.wrapped_socket = new WebSocketProxy((this).log, socket);
        ((this).log).debug(((((this).id) + (".onWSInit(")) + ((this.wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSInit(this.wrapped_socket);
    }
    public void onWSConnected(quark.WebSocket socket) {
        ((this).log).debug(((((this).id) + (".onWSConnected(")) + ((this.wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSConnected(this.wrapped_socket);
    }
    public void onWSMessage(quark.WebSocket socket, String message) {
        ((this).log).debug(((((((this).id) + (".onWSMessage(")) + ((this.wrapped_socket).id)) + (", ")) + (Functions.quote(message))) + (")"));
        (this.handler_impl).onWSMessage(this.wrapped_socket, message);
    }
    public void onWSBinary(quark.WebSocket socket, io.datawire.quark.runtime.Buffer message) {
        ((this).log).debug(((((((this).id) + (".onWSBinary(")) + ((this.wrapped_socket).id)) + (", ")) + (((quark.concurrent.Context.runtime()).codec()).toHexdump(message, 0, (message).capacity(), 4))) + (")"));
        (this.handler_impl).onWSBinary(this.wrapped_socket, message);
    }
    public void onWSClosed(quark.WebSocket socket) {
        ((this).log).debug(((((this).id) + (".onWSClosed(")) + ((this.wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSClosed(this.wrapped_socket);
    }
    public void onWSError(quark.WebSocket socket) {
        ((this).log).debug(((((this).id) + (".onWSError(")) + ((this.wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSError(this.wrapped_socket);
    }
    public void onWSFinal(quark.WebSocket socket) {
        ((this).log).debug(((((this).id) + (".onWSFinal(")) + ((this.wrapped_socket).id)) + (")"));
        (this.handler_impl).onWSFinal(this.wrapped_socket);
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
        if ((name)==("wrapped_socket") || ((Object)(name) != null && ((Object) (name)).equals("wrapped_socket"))) {
            return (this).wrapped_socket;
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
        if ((name)==("wrapped_socket") || ((Object)(name) != null && ((Object) (name)).equals("wrapped_socket"))) {
            (this).wrapped_socket = (WebSocketProxy) (value);
        }
    }
}
