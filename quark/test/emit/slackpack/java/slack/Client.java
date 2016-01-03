package slack;

/**
 * Represents a persistent connection to the slack service.
 */
public class Client implements io.datawire.quark.runtime.WSHandler, io.datawire.quark.runtime.HTTPHandler, io.datawire.quark.runtime.QObject {
    public static reflect.Class slack_Client_ref = slackpack_md.Root.slack_Client_md;
    public io.datawire.quark.runtime.Runtime runtime;
    public String token;
    public SlackHandler handler;
    public Integer event_id = 0;
    public io.datawire.quark.runtime.WebSocket socket = null;
    public Client(io.datawire.quark.runtime.Runtime runtime, String token, SlackHandler handler) {
        (this).runtime = runtime;
        (this).token = token;
        (this).handler = handler;
    }
    /**
     * Connect the client to the slack service.
     */
    public void connect() {
        (this).request("rtm.start", new java.util.HashMap<String,Object>(), this);
    }
    public void request(String request, java.util.HashMap<String,Object> params, io.datawire.quark.runtime.HTTPHandler handler) {
        String url = ("https://slack.com/api/") + (request);
        io.datawire.quark.runtime.HTTPRequest req = new io.datawire.quark.runtime.ClientHTTPRequest(url);
        (req).setMethod("POST");
        (params).put(("token"), ((this).token));
        (req).setBody(io.datawire.quark.runtime.Builtins.urlencode(params));
        (req).setHeader("Content-Type", "application/x-www-form-urlencoded");
        ((this).runtime).request(req, handler);
    }
    public void ws_connect(String wsurl) {
        ((this).runtime).open(wsurl, this);
    }
    public void ws_send(String message) {
        (this.socket).send(message);
    }
    public void onWSConnected(io.datawire.quark.runtime.WebSocket socket) {
        (this).socket = socket;
    }
    public void onWSClose(io.datawire.quark.runtime.WebSocket socket) {
        do{System.out.println("socket closed");System.out.flush();}while(false);
    }
    public void onWSError(io.datawire.quark.runtime.WebSocket socket) {
        do{System.out.println("socket error");System.out.flush();}while(false);
    }
    public slack.event.SlackEvent construct(String type) {
        if ((type)==("error") || ((type) != null && (type).equals("error"))) {
            return new slack.event.SlackError();
        }
        if ((type)==("hello") || ((type) != null && (type).equals("hello"))) {
            return new slack.event.Hello();
        }
        if ((type)==("message") || ((type) != null && (type).equals("message"))) {
            return new slack.event.Message();
        }
        return new slack.event.SlackEvent();
    }
    public void onWSMessage(io.datawire.quark.runtime.WebSocket socket, String message) {
        io.datawire.quark.runtime.JSONObject obj = io.datawire.quark.runtime.JSONObject.parse(message);
        String type = ((obj).getObjectItem("type")).getString();
        slack.event.SlackEvent event = (this).construct(type);
        (event).load(this, obj);
        (event).dispatch((this).handler);
    }
    public void onHTTPResponse(io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {
        Integer code = (response).getCode();
        slack.event.SlackError error = (slack.event.SlackError) (null);
        if (!((code)==(200) || ((code) != null && (code).equals(200)))) {
            error = new slack.event.SlackError();
            (error).code = code;
            (error).dispatch((this).handler);
        } else {
            io.datawire.quark.runtime.JSONObject login_data = io.datawire.quark.runtime.JSONObject.parse((response).getBody());
            if (((login_data).getObjectItem("ok")).getBool()) {
                (this).ws_connect(((login_data).getObjectItem("url")).getString());
            } else {
                error = new slack.event.SlackError();
                (error).text = ((login_data).getObjectItem("error")).getString();
                (error).dispatch((this).handler);
            }
        }
    }
    public String _getClass() {
        return "slack.Client";
    }
    public Object _getField(String name) {
        if ((name)==("runtime") || ((name) != null && (name).equals("runtime"))) {
            return (this).runtime;
        }
        if ((name)==("token") || ((name) != null && (name).equals("token"))) {
            return (this).token;
        }
        if ((name)==("handler") || ((name) != null && (name).equals("handler"))) {
            return (this).handler;
        }
        if ((name)==("event_id") || ((name) != null && (name).equals("event_id"))) {
            return (this).event_id;
        }
        if ((name)==("socket") || ((name) != null && (name).equals("socket"))) {
            return (this).socket;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("runtime") || ((name) != null && (name).equals("runtime"))) {
            (this).runtime = (io.datawire.quark.runtime.Runtime) (value);
        }
        if ((name)==("token") || ((name) != null && (name).equals("token"))) {
            (this).token = (String) (value);
        }
        if ((name)==("handler") || ((name) != null && (name).equals("handler"))) {
            (this).handler = (SlackHandler) (value);
        }
        if ((name)==("event_id") || ((name) != null && (name).equals("event_id"))) {
            (this).event_id = (Integer) (value);
        }
        if ((name)==("socket") || ((name) != null && (name).equals("socket"))) {
            (this).socket = (io.datawire.quark.runtime.WebSocket) (value);
        }
    }
    public void onWSInit(io.datawire.quark.runtime.WebSocket socket) {}
    public void onWSBinary(io.datawire.quark.runtime.WebSocket socket, io.datawire.quark.runtime.Buffer message) {}
    public void onWSClosed(io.datawire.quark.runtime.WebSocket socket) {}
    public void onWSFinal(io.datawire.quark.runtime.WebSocket socket) {}
    public void onHTTPInit(io.datawire.quark.runtime.HTTPRequest request) {}
    public void onHTTPError(io.datawire.quark.runtime.HTTPRequest request, String message) {}
    public void onHTTPFinal(io.datawire.quark.runtime.HTTPRequest request) {}
}
