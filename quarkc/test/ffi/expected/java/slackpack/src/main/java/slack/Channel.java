package slack;

/**
 * A reference to a channel.
 */
public class Channel implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class slack_Channel_ref = slackpack_md.Root.slack_Channel_md;
    public Client client;
    public String channel;
    public Channel(Client client, String channel) {}
    /**
     * Send a message to a channel.
     */
    public void send(String message) {}
    public String _getClass() {
        return "slack.Channel";
    }
    public Object _getField(String name) {
        if ((name)==("client") || ((Object)(name) != null && ((Object) (name)).equals("client"))) {
            return (this).client;
        }
        if ((name)==("channel") || ((Object)(name) != null && ((Object) (name)).equals("channel"))) {
            return (this).channel;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("client") || ((Object)(name) != null && ((Object) (name)).equals("client"))) {
            (this).client = (Client) (value);
        }
        if ((name)==("channel") || ((Object)(name) != null && ((Object) (name)).equals("channel"))) {
            (this).channel = (String) (value);
        }
    }
}
