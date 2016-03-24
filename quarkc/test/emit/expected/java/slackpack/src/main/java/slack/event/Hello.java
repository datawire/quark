package slack.event;

/**
 * The client successfully connected to the server.
 */
public class Hello extends SlackEvent implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class slack_event_Hello_ref = slackpack_md.Root.slack_event_Hello_md;
    public Hello() {
        super();
    }
    public void dispatch(slack.SlackHandler handler) {
        (handler).onHello(this);
    }
    public String _getClass() {
        return "slack.event.Hello";
    }
    public Object _getField(String name) {
        if ((name)==("type") || ((Object)(name) != null && ((Object) (name)).equals("type"))) {
            return (this).type;
        }
        if ((name)==("user") || ((Object)(name) != null && ((Object) (name)).equals("user"))) {
            return (this).user;
        }
        if ((name)==("channel") || ((Object)(name) != null && ((Object) (name)).equals("channel"))) {
            return (this).channel;
        }
        if ((name)==("timestamp") || ((Object)(name) != null && ((Object) (name)).equals("timestamp"))) {
            return (this).timestamp;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("type") || ((Object)(name) != null && ((Object) (name)).equals("type"))) {
            (this).type = (String) (value);
        }
        if ((name)==("user") || ((Object)(name) != null && ((Object) (name)).equals("user"))) {
            (this).user = (slack.User) (value);
        }
        if ((name)==("channel") || ((Object)(name) != null && ((Object) (name)).equals("channel"))) {
            (this).channel = (slack.Channel) (value);
        }
        if ((name)==("timestamp") || ((Object)(name) != null && ((Object) (name)).equals("timestamp"))) {
            (this).timestamp = (String) (value);
        }
    }
}
