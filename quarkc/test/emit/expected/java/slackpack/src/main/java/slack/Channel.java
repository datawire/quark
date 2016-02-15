package slack;

/**
 * A reference to a channel.
 */
public class Channel implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class slack_Channel_ref = slackpack_md.Root.slack_Channel_md;
    public Client client;
    public String channel;
    public Channel(Client client, String channel) {
        (this).client = client;
        (this).channel = channel;
    }
    public void send(String message) {
        Integer id = (this.client).event_id;
        (this.client).event_id = ((this.client).event_id) + (1);
        io.datawire.quark.runtime.JSONObject msg = new io.datawire.quark.runtime.JSONObject();
        (msg).setObjectItem(("id"), ((new io.datawire.quark.runtime.JSONObject()).setNumber(id)));
        (msg).setObjectItem(("type"), ((new io.datawire.quark.runtime.JSONObject()).setString("message")));
        (msg).setObjectItem(("channel"), ((new io.datawire.quark.runtime.JSONObject()).setString((this).channel)));
        (msg).setObjectItem(("text"), ((new io.datawire.quark.runtime.JSONObject()).setString(message)));
        (this.client).ws_send((msg).toString());
    }
    public String _getClass() {
        return "slack.Channel";
    }
    public Object _getField(String name) {
        if ((name)==("client") || ((name) != null && (name).equals("client"))) {
            return (this).client;
        }
        if ((name)==("channel") || ((name) != null && (name).equals("channel"))) {
            return (this).channel;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("client") || ((name) != null && (name).equals("client"))) {
            (this).client = (Client) (value);
        }
        if ((name)==("channel") || ((name) != null && (name).equals("channel"))) {
            (this).channel = (String) (value);
        }
    }
}
