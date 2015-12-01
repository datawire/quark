package slack;

/**
 * A reference to a channel.
 */
public class Channel {
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
}
