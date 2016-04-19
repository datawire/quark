package quark.spi_api_tracing;

public class WebSocketProxy extends Identifiable implements quark.WebSocket, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_WebSocketProxy_ref = quark_md.Root.quark_spi_api_tracing_WebSocketProxy_md;
    public quark.WebSocket socket_impl;
    public WebSocketProxy(io.datawire.quark.runtime.Logger log, quark.WebSocket socket_impl) {
        super(log, "WebSocket");
        (this).socket_impl = socket_impl;
    }
    public Boolean send(String message) {
        ((this).log).debug(((((this).id) + (".send(")) + (Functions.quote(message))) + (")..."));
        Boolean ret = (this.socket_impl).send(message);
        ((this).log).debug((((((this).id) + (".send(")) + (")")) + (" -> ")) + ((ret).toString()));
        return ret;
    }
    public Boolean sendBinary(io.datawire.quark.runtime.Buffer message) {
        ((this).log).debug(((((this).id) + (".sendBinary(")) + (((quark.concurrent.Context.runtime()).codec()).toHexdump(message, 0, (message).capacity(), 4))) + (")..."));
        Boolean ret = (this.socket_impl).sendBinary(message);
        ((this).log).debug((((((this).id) + (".sendBinary(")) + (")")) + (" -> ")) + ((ret).toString()));
        return ret;
    }
    public Boolean close() {
        ((this).log).debug((((this).id) + (".close(")) + (")..."));
        Boolean ret = (this.socket_impl).close();
        ((this).log).debug((((((this).id) + (".close(")) + (")")) + (" -> ")) + ((ret).toString()));
        return ret;
    }
    public String _getClass() {
        return "quark.spi_api_tracing.WebSocketProxy";
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
        if ((name)==("socket_impl") || ((Object)(name) != null && ((Object) (name)).equals("socket_impl"))) {
            return (this).socket_impl;
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
        if ((name)==("socket_impl") || ((Object)(name) != null && ((Object) (name)).equals("socket_impl"))) {
            (this).socket_impl = (quark.WebSocket) (value);
        }
    }
}
