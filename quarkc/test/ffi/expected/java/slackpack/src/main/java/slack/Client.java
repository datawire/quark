package slack;

/**
 * Represents a persistent connection to the slack service.
 */
public class Client implements quark.WSHandler, quark.HTTPHandler, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class slack_Client_ref = slackpack_md.Root.slack_Client_md;
    public static quark.reflect.Class quark_Map_quark_String_quark_Object__ref = slackpack_md.Root.quark_Map_quark_String_quark_Object__md;
    public quark.Runtime runtime;
    public String token;
    public SlackHandler handler;
    public Integer event_id;
    public quark.WebSocket socket;
    public Client(quark.Runtime runtime, String token, SlackHandler handler) {}
    /**
     * Connect the client to the slack service.
     */
    public void connect() {}
    public void request(String request, java.util.HashMap<String,Object> params, quark.HTTPHandler handler) {}
    public void ws_connect(String wsurl) {}
    public void ws_send(String message) {}
    public void onWSConnected(quark.WebSocket socket) {}
    public void onWSClose(quark.WebSocket socket) {}
    public void onWSError(quark.WebSocket socket, quark.WSError error) {}
    public slack.event.SlackEvent construct(String type) {
        return (slack.event.SlackEvent) (null);
    }
    public void onWSMessage(quark.WebSocket socket, String message) {}
    public void onHTTPResponse(quark.HTTPRequest request, quark.HTTPResponse response) {}
    public String _getClass() {
        return "slack.Client";
    }
    public Object _getField(String name) {
        if ((name)==("runtime") || ((Object)(name) != null && ((Object) (name)).equals("runtime"))) {
            return (this).runtime;
        }
        if ((name)==("token") || ((Object)(name) != null && ((Object) (name)).equals("token"))) {
            return (this).token;
        }
        if ((name)==("handler") || ((Object)(name) != null && ((Object) (name)).equals("handler"))) {
            return (this).handler;
        }
        if ((name)==("event_id") || ((Object)(name) != null && ((Object) (name)).equals("event_id"))) {
            return (this).event_id;
        }
        if ((name)==("socket") || ((Object)(name) != null && ((Object) (name)).equals("socket"))) {
            return (this).socket;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("runtime") || ((Object)(name) != null && ((Object) (name)).equals("runtime"))) {
            (this).runtime = (quark.Runtime) (value);
        }
        if ((name)==("token") || ((Object)(name) != null && ((Object) (name)).equals("token"))) {
            (this).token = (String) (value);
        }
        if ((name)==("handler") || ((Object)(name) != null && ((Object) (name)).equals("handler"))) {
            (this).handler = (SlackHandler) (value);
        }
        if ((name)==("event_id") || ((Object)(name) != null && ((Object) (name)).equals("event_id"))) {
            (this).event_id = (Integer) (value);
        }
        if ((name)==("socket") || ((Object)(name) != null && ((Object) (name)).equals("socket"))) {
            (this).socket = (quark.WebSocket) (value);
        }
    }
    /**
     * Called when the WebSocket is first created.
     */
    public void onWSInit(quark.WebSocket socket) {}
    /**
     * Called when the WebSocket receives a binary message.
     */
    public void onWSBinary(quark.WebSocket socket, io.datawire.quark.runtime.Buffer message) {}
    /**
     * Called when the WebSocket disconnects cleanly.
     */
    public void onWSClosed(quark.WebSocket socket) {}
    /**
     * Called when the WebSocket is done with life, one way or another.
     */
    public void onWSFinal(quark.WebSocket socket) {}
    public void onHTTPInit(quark.HTTPRequest request) {}
    public void onHTTPError(quark.HTTPRequest request, quark.HTTPError message) {}
    public void onHTTPFinal(quark.HTTPRequest request) {}
}
